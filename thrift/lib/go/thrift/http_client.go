/*
 * Copyright 2019-present Facebook, Inc.
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package thrift

import (
	"bytes"
	"io"
	"io/ioutil"
	"net/http"
	"net/url"
	"strconv"
)

// Default to using the shared http client. Library users are
// free to change this global client or specify one through
// HTTPClientOptions.
var DefaultHTTPClient *http.Client = http.DefaultClient

type HTTPClient struct {
	client             *http.Client
	response           *http.Response
	url                *url.URL
	requestBuffer      *bytes.Buffer
	header             http.Header
	nsecConnectTimeout int64
	nsecReadTimeout    int64
}

type HTTPClientTransportFactory struct {
	options HTTPClientOptions
	url     string
	isPost  bool
}

func (p *HTTPClientTransportFactory) GetTransport(trans Transport) Transport {
	if trans != nil {
		t, ok := trans.(*HTTPClient)
		if ok && t.url != nil {
			if t.requestBuffer != nil {
				t2, _ := NewHTTPPostClientWithOptions(t.url.String(), p.options)
				return t2
			}
			t2, _ := NewHTTPClientWithOptions(t.url.String(), p.options)
			return t2
		}
	}
	if p.isPost {
		s, _ := NewHTTPPostClientWithOptions(p.url, p.options)
		return s
	}
	s, _ := NewHTTPClientWithOptions(p.url, p.options)
	return s
}

type HTTPClientOptions struct {
	// If nil, DefaultHTTPClient is used
	Client *http.Client
}

func NewHTTPClientTransportFactory(url string) *HTTPClientTransportFactory {
	return NewHTTPClientTransportFactoryWithOptions(url, HTTPClientOptions{})
}

func NewHTTPClientTransportFactoryWithOptions(url string, options HTTPClientOptions) *HTTPClientTransportFactory {
	return &HTTPClientTransportFactory{url: url, isPost: false, options: options}
}

func NewHTTPPostClientTransportFactory(url string) *HTTPClientTransportFactory {
	return NewHTTPPostClientTransportFactoryWithOptions(url, HTTPClientOptions{})
}

func NewHTTPPostClientTransportFactoryWithOptions(url string, options HTTPClientOptions) *HTTPClientTransportFactory {
	return &HTTPClientTransportFactory{url: url, isPost: true, options: options}
}

func NewHTTPClientWithOptions(urlstr string, options HTTPClientOptions) (Transport, error) {
	parsedURL, err := url.Parse(urlstr)
	if err != nil {
		return nil, err
	}
	response, err := http.Get(urlstr)
	if err != nil {
		return nil, err
	}
	client := options.Client
	if client == nil {
		client = DefaultHTTPClient
	}
	return &HTTPClient{client: client, response: response, url: parsedURL}, nil
}

func NewHTTPClient(urlstr string) (Transport, error) {
	return NewHTTPClientWithOptions(urlstr, HTTPClientOptions{})
}

func NewHTTPPostClientWithOptions(urlstr string, options HTTPClientOptions) (Transport, error) {
	parsedURL, err := url.Parse(urlstr)
	if err != nil {
		return nil, err
	}
	buf := make([]byte, 0, 1024)
	client := options.Client
	if client == nil {
		client = DefaultHTTPClient
	}
	return &HTTPClient{client: client, url: parsedURL, requestBuffer: bytes.NewBuffer(buf), header: http.Header{}}, nil
}

func NewHTTPPostClient(urlstr string) (Transport, error) {
	return NewHTTPPostClientWithOptions(urlstr, HTTPClientOptions{})
}

// Set the HTTP Header for this specific Thrift Transport
// It is important that you first assert the Transport as a HTTPClient type
// like so:
//
// httpTrans := trans.(HTTPClient)
// httpTrans.SetHeader("User-Agent","Thrift Client 1.0")
func (p *HTTPClient) SetHeader(key string, value string) {
	p.header.Add(key, value)
}

// Get the HTTP Header represented by the supplied Header Key for this specific Thrift Transport
// It is important that you first assert the Transport as a HTTPClient type
// like so:
//
// httpTrans := trans.(HTTPClient)
// hdrValue := httpTrans.GetHeader("User-Agent")
func (p *HTTPClient) GetHeader(key string) string {
	return p.header.Get(key)
}

// Deletes the HTTP Header given a Header Key for this specific Thrift Transport
// It is important that you first assert the Transport as a HTTPClient type
// like so:
//
// httpTrans := trans.(HTTPClient)
// httpTrans.DelHeader("User-Agent")
func (p *HTTPClient) DelHeader(key string) {
	p.header.Del(key)
}

func (p *HTTPClient) Open() error {
	// do nothing
	return nil
}

func (p *HTTPClient) IsOpen() bool {
	return p.response != nil || p.requestBuffer != nil
}

func (p *HTTPClient) closeResponse() error {
	var err error
	if p.response != nil && p.response.Body != nil {
		// The docs specify that if keepalive is enabled and the response body is not
		// read to completion the connection will never be returned to the pool and
		// reused. Errors are being ignored here because if the connection is invalid
		// and this fails for some reason, the Close() method will do any remaining
		// cleanup.
		io.Copy(ioutil.Discard, p.response.Body)

		err = p.response.Body.Close()
	}

	p.response = nil
	return err
}

func (p *HTTPClient) Close() error {
	if p.requestBuffer != nil {
		p.requestBuffer.Reset()
		p.requestBuffer = nil
	}
	return p.closeResponse()
}

func (p *HTTPClient) Read(buf []byte) (int, error) {
	if p.response == nil {
		return 0, NewTransportException(NOT_OPEN, "Response buffer is empty, no request.")
	}
	n, err := p.response.Body.Read(buf)
	if n > 0 && (err == nil || err == io.EOF) {
		return n, nil
	}
	return n, NewTransportExceptionFromError(err)
}

func (p *HTTPClient) ReadByte() (c byte, err error) {
	return readByte(p.response.Body)
}

func (p *HTTPClient) Write(buf []byte) (int, error) {
	n, err := p.requestBuffer.Write(buf)
	return n, err
}

func (p *HTTPClient) WriteByte(c byte) error {
	return p.requestBuffer.WriteByte(c)
}

func (p *HTTPClient) WriteString(s string) (n int, err error) {
	return p.requestBuffer.WriteString(s)
}

func (p *HTTPClient) Flush() error {
	// Close any previous response body to avoid leaking connections.
	p.closeResponse()

	req, err := http.NewRequest("POST", p.url.String(), p.requestBuffer)
	if err != nil {
		return NewTransportExceptionFromError(err)
	}
	p.header.Add("Content-Type", "application/x-thrift")
	req.Header = p.header
	response, err := p.client.Do(req)
	if err != nil {
		return NewTransportExceptionFromError(err)
	}
	if response.StatusCode != http.StatusOK {
		// Close the response to avoid leaking file descriptors. closeResponse does
		// more than just call Close(), so temporarily assign it and reuse the logic.
		p.response = response
		p.closeResponse()

		// TODO(pomack) log bad response
		return NewTransportException(UNKNOWN_TRANSPORT_EXCEPTION, "HTTP Response code: "+strconv.Itoa(response.StatusCode))
	}
	p.response = response
	return nil
}

func (p *HTTPClient) RemainingBytes() (num_bytes uint64) {
	len := p.response.ContentLength
	if len >= 0 {
		return uint64(len)
	}

	const maxSize = ^uint64(0)
	return maxSize // the thruth is, we just don't know unless framed is used
}
