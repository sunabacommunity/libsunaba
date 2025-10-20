package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.TypedArray;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class WebSocketMultiplayerPeer extends MultiplayerPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('WebSocketMultiplayerPeer');
        }
        native = _native;
    }

    public var handshakeHeaders(get, set): TypedArray<String>;
    function get_handshakeHeaders(): TypedArray<String> {
        return native.get('handshake_headers');
    }
    function set_handshakeHeaders(value: TypedArray<String>): TypedArray<String> {
      native.set('handshake_headers', value);
        return value;
    }
    public var handshakeTimeout(get, set): Float;
    function get_handshakeTimeout(): Float {
        return native.get('handshake_timeout');
    }
    function set_handshakeTimeout(value: Float): Float {
      native.set('handshake_timeout', value);
        return value;
    }
    public var inboundBufferSize(get, set): Int;
    function get_inboundBufferSize(): Int {
        return native.get('inbound_buffer_size');
    }
    function set_inboundBufferSize(value: Int): Int {
      native.set('inbound_buffer_size', value);
        return value;
    }
    public var maxQueuedPackets(get, set): Int;
    function get_maxQueuedPackets(): Int {
        return native.get('max_queued_packets');
    }
    function set_maxQueuedPackets(value: Int): Int {
      native.set('max_queued_packets', value);
        return value;
    }
    public var outboundBufferSize(get, set): Int;
    function get_outboundBufferSize(): Int {
        return native.get('outbound_buffer_size');
    }
    function set_outboundBufferSize(value: Int): Int {
      native.set('outbound_buffer_size', value);
        return value;
    }
    public var supportedProtocols(get, set): TypedArray<String>;
    function get_supportedProtocols(): TypedArray<String> {
        return native.get('supported_protocols');
    }
    function set_supportedProtocols(value: TypedArray<String>): TypedArray<String> {
      native.set('supported_protocols', value);
        return value;
    }


  public function createClient(url: String, ?tlsClientOptions: Variant): Int {
      var args = new ArrayList();
      args.append(url);
      if (tlsClientOptions != null) {
          args.append(tlsClientOptions);
      }
      return native.call('create_client', args);
  }
  public function createServer(port: Int, ?bindAddress: String, ?tlsServerOptions: Variant): Int {
      var args = new ArrayList();
      args.append(port);
      if (bindAddress != null) {
          args.append(bindAddress);
      }
      if (tlsServerOptions != null) {
          args.append(tlsServerOptions);
      }
      return native.call('create_server', args);
  }
  public function getPeer(peerId: Int): WebSocketPeer {
      var args = new ArrayList();
      args.append(peerId);
      var ref: NativeReference = native.call('get_peer', args);
      return new WebSocketPeer(ref);
  }
  public function getPeerAddress(id: Int): String {
      var args = new ArrayList();
      args.append(id);
      return native.call('get_peer_address', args);
  }
  public function getPeerPort(id: Int): Int {
      var args = new ArrayList();
      args.append(id);
      return native.call('get_peer_port', args);
  }
}
