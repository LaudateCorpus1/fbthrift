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
	"io"
	"testing"
)

const TRANSPORT_BINARY_DATA_SIZE = 4096

var (
	transport_bdata  []byte // test data for writing; same as data
	transport_header map[string]string
)

func init() {
	transport_bdata = make([]byte, TRANSPORT_BINARY_DATA_SIZE)
	for i := 0; i < TRANSPORT_BINARY_DATA_SIZE; i++ {
		transport_bdata[i] = byte((i + 'a') % 255)
	}
	transport_header = map[string]string{"key": "User-Agent",
		"value": "Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36"}
}

func TransportTest(t *testing.T, writeTrans Transport, readTrans Transport) {
	buf := make([]byte, TRANSPORT_BINARY_DATA_SIZE)
	if !writeTrans.IsOpen() {
		t.Fatalf("Transport %T not open: %s", writeTrans, writeTrans)
	}
	if !readTrans.IsOpen() {
		t.Fatalf("Transport %T not open: %s", readTrans, readTrans)
	}

	// Special case for header transport -- need to reset protocol on read
	var headerTrans *HeaderTransport
	if hdr, ok := readTrans.(*HeaderTransport); ok {
		headerTrans = hdr
	}

	_, err := writeTrans.Write(transport_bdata)
	if err != nil {
		t.Fatalf("Transport %T cannot write binary data of length %d: %s", writeTrans, len(transport_bdata), err)
	}
	err = writeTrans.Flush()
	if err != nil {
		t.Fatalf("Transport %T cannot flush write of binary data: %s", writeTrans, err)
	}

	if headerTrans != nil {
		err = headerTrans.ResetProtocol()
		if err != nil {
			t.Errorf("Header Transport %T cannot read binary data frame", readTrans)
		}
	}
	n, err := io.ReadFull(readTrans, buf)
	if err != nil {
		t.Errorf("Transport %T cannot read binary data of length %d: %s", readTrans, TRANSPORT_BINARY_DATA_SIZE, err)
	}
	if n != TRANSPORT_BINARY_DATA_SIZE {
		t.Errorf("Transport %T read only %d instead of %d bytes of binary data", readTrans, n, TRANSPORT_BINARY_DATA_SIZE)
	}
	for k, v := range buf {
		if v != transport_bdata[k] {
			t.Fatalf("Transport %T read %d instead of %d for index %d of binary data 2", readTrans, v, transport_bdata[k], k)
		}
	}
	_, err = writeTrans.Write(transport_bdata)
	if err != nil {
		t.Fatalf("Transport %T cannot write binary data 2 of length %d: %s", writeTrans, len(transport_bdata), err)
	}
	err = writeTrans.Flush()
	if err != nil {
		t.Fatalf("Transport %T cannot flush write binary data 2: %s", writeTrans, err)
	}

	if headerTrans != nil {
		err = headerTrans.ResetProtocol()
		if err != nil {
			t.Errorf("Header Transport %T cannot read binary data frame 2", readTrans)
		}
	}
	buf = make([]byte, TRANSPORT_BINARY_DATA_SIZE)
	read := 1
	for n = 0; n < TRANSPORT_BINARY_DATA_SIZE && read != 0; {
		read, err = readTrans.Read(buf[n:])
		if err != nil {
			t.Errorf("Transport %T cannot read binary data 2 of total length %d from offset %d: %s", readTrans, TRANSPORT_BINARY_DATA_SIZE, n, err)
		}
		n += read
	}
	if n != TRANSPORT_BINARY_DATA_SIZE {
		t.Errorf("Transport %T read only %d instead of %d bytes of binary data 2", readTrans, n, TRANSPORT_BINARY_DATA_SIZE)
	}
	for k, v := range buf {
		if v != transport_bdata[k] {
			t.Fatalf("Transport %T read %d instead of %d for index %d of binary data 2", readTrans, v, transport_bdata[k], k)
		}
	}
}

func TransportHeaderTest(t *testing.T, writeTrans Transport, readTrans Transport) {
	buf := make([]byte, TRANSPORT_BINARY_DATA_SIZE)
	if !writeTrans.IsOpen() {
		t.Fatalf("Transport %T not open: %s", writeTrans, writeTrans)
	}
	if !readTrans.IsOpen() {
		t.Fatalf("Transport %T not open: %s", readTrans, readTrans)
	}
	// Need to assert type of Transport to HTTPClient to expose the Setter
	httpWPostTrans := writeTrans.(*HTTPClient)
	httpWPostTrans.SetHeader(transport_header["key"], transport_header["value"])

	_, err := writeTrans.Write(transport_bdata)
	if err != nil {
		t.Fatalf("Transport %T cannot write binary data of length %d: %s", writeTrans, len(transport_bdata), err)
	}
	err = writeTrans.Flush()
	if err != nil {
		t.Fatalf("Transport %T cannot flush write of binary data: %s", writeTrans, err)
	}
	// Need to assert type of Transport to HTTPClient to expose the Getter
	httpRPostTrans := readTrans.(*HTTPClient)
	readHeader := httpRPostTrans.GetHeader(transport_header["key"])
	if err != nil {
		t.Errorf("Transport %T cannot read HTTP Header Value", httpRPostTrans)
	}

	if transport_header["value"] != readHeader {
		t.Errorf("Expected HTTP Header Value %s, got %s", transport_header["value"], readHeader)
	}
	n, err := io.ReadFull(readTrans, buf)
	if err != nil {
		t.Errorf("Transport %T cannot read binary data of length %d: %s", readTrans, TRANSPORT_BINARY_DATA_SIZE, err)
	}
	if n != TRANSPORT_BINARY_DATA_SIZE {
		t.Errorf("Transport %T read only %d instead of %d bytes of binary data", readTrans, n, TRANSPORT_BINARY_DATA_SIZE)
	}
	for k, v := range buf {
		if v != transport_bdata[k] {
			t.Fatalf("Transport %T read %d instead of %d for index %d of binary data 2", readTrans, v, transport_bdata[k], k)
		}
	}
}

func CloseTransports(t *testing.T, readTrans Transport, writeTrans Transport) {
	err := readTrans.Close()
	if err != nil {
		t.Errorf("Transport %T cannot close read transport: %s", readTrans, err)
	}
	if writeTrans != readTrans {
		err = writeTrans.Close()
		if err != nil {
			t.Errorf("Transport %T cannot close write transport: %s", writeTrans, err)
		}
	}
}

func valueInSlice(value string, slice []string) bool {
	for _, v := range slice {
		if value == v {
			return true
		}
	}
	return false
}
