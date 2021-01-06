/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.basic;

import java.util.*;
import org.apache.thrift.protocol.*;

public class DbMixedStackArgumentsReactiveClient 
  implements DbMixedStackArguments.Reactive {
  private final org.apache.thrift.ProtocolId _protocolId;
  private final reactor.core.publisher.Mono<? extends com.facebook.swift.transport.client.RpcClient> _rpcClient;

  private static final TField _getDataByKey0_KEY_FIELD_DESC = new TField("key", TType.STRING, (short)(0 + 1));
  private static final java.util.Map<Short, com.facebook.swift.transport.payload.Reader> _getDataByKey0_EXCEPTION_READERS;
  private static final TField _getDataByKey1_KEY_FIELD_DESC = new TField("key", TType.STRING, (short)(0 + 1));
  private static final java.util.Map<Short, com.facebook.swift.transport.payload.Reader> _getDataByKey1_EXCEPTION_READERS;

  static {
    _getDataByKey0_EXCEPTION_READERS = java.util.Collections.emptyMap();
    _getDataByKey1_EXCEPTION_READERS = java.util.Collections.emptyMap();
  }

  public DbMixedStackArgumentsReactiveClient(org.apache.thrift.ProtocolId _protocolId, reactor.core.publisher.Mono<? extends com.facebook.swift.transport.client.RpcClient> _rpcClient) {
    
    this._protocolId = _protocolId;
    this._rpcClient = _rpcClient;
  }

  @java.lang.Override
  public void close() {}

  private com.facebook.swift.transport.payload.Writer _creategetDataByKey0Writer(final String key) {
    return oprot -> {
      try {
        {
          oprot.writeFieldBegin(_getDataByKey0_KEY_FIELD_DESC);

          String _iter0 = key;

          oprot.writeString(key);
          oprot.writeFieldEnd();
        }


      } catch (Exception _e) {
        throw reactor.core.Exceptions.propagate(_e);
      }
    };
  }

  private static final com.facebook.swift.transport.payload.Reader _getDataByKey0_READER =
    oprot -> {
              try {
                byte[] _r = oprot.readBinary().array();
                return _r;


              } catch (Exception e) {
                throw reactor.core.Exceptions.propagate(e);
              }
            };


  @java.lang.Override
  public reactor.core.publisher.Mono<byte[]> getDataByKey0(final String key) {
    return _rpcClient
      .flatMap(_rpc -> {
        org.apache.thrift.RequestRpcMetadata _metadata = new org.apache.thrift.RequestRpcMetadata.Builder()
                .setName("getDataByKey0")
                .setKind(org.apache.thrift.RpcKind.SINGLE_REQUEST_SINGLE_RESPONSE)
                .setOtherMetadata(Collections.emptyMap())
                .setProtocol(_protocolId)
                .build();

            com.facebook.swift.transport.payload.ClientRequestPayload<byte[]> _crp =
                com.facebook.swift.transport.payload.ClientRequestPayload.create(
                    _creategetDataByKey0Writer(key),
                    _getDataByKey0_READER,
                    _getDataByKey0_EXCEPTION_READERS,
                    _metadata,
                    java.util.Collections.emptyMap());

            return _rpc
                .singleRequestSingleResponse(_crp, com.facebook.swift.transport.client.RpcOptions.EMPTY)
                .map(_p -> _p.getData());
      });
  }

  private com.facebook.swift.transport.payload.Writer _creategetDataByKey1Writer(final String key) {
    return oprot -> {
      try {
        {
          oprot.writeFieldBegin(_getDataByKey1_KEY_FIELD_DESC);

          String _iter0 = key;

          oprot.writeString(key);
          oprot.writeFieldEnd();
        }


      } catch (Exception _e) {
        throw reactor.core.Exceptions.propagate(_e);
      }
    };
  }

  private static final com.facebook.swift.transport.payload.Reader _getDataByKey1_READER =
    oprot -> {
              try {
                byte[] _r = oprot.readBinary().array();
                return _r;


              } catch (Exception e) {
                throw reactor.core.Exceptions.propagate(e);
              }
            };


  @java.lang.Override
  public reactor.core.publisher.Mono<byte[]> getDataByKey1(final String key) {
    return _rpcClient
      .flatMap(_rpc -> {
        org.apache.thrift.RequestRpcMetadata _metadata = new org.apache.thrift.RequestRpcMetadata.Builder()
                .setName("getDataByKey1")
                .setKind(org.apache.thrift.RpcKind.SINGLE_REQUEST_SINGLE_RESPONSE)
                .setOtherMetadata(Collections.emptyMap())
                .setProtocol(_protocolId)
                .build();

            com.facebook.swift.transport.payload.ClientRequestPayload<byte[]> _crp =
                com.facebook.swift.transport.payload.ClientRequestPayload.create(
                    _creategetDataByKey1Writer(key),
                    _getDataByKey1_READER,
                    _getDataByKey1_EXCEPTION_READERS,
                    _metadata,
                    java.util.Collections.emptyMap());

            return _rpc
                .singleRequestSingleResponse(_crp, com.facebook.swift.transport.client.RpcOptions.EMPTY)
                .map(_p -> _p.getData());
      });
  }


}