package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.TypedArray;
import newhaven.core.ArrayList;
import newhaven.core.ByteArray;

class WebSocketPeer extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('WebSocketPeer');
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
    public var heartbeatInterval(get, set): Float;
    function get_heartbeatInterval(): Float {
        return native.get('heartbeat_interval');
    }
    function set_heartbeatInterval(value: Float): Float {
      native.set('heartbeat_interval', value);
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

  public function acceptStream(stream: Variant): Int {
      var args = new ArrayList();
      args.append(stream);
      return native.call('accept_stream', args);
  }
  public function close(?code: Int, ?reason: String): Void {
      var args = new ArrayList();
      if (code != null) {
          args.append(code);
      }
      if (reason != null) {
          args.append(reason);
      }
      native.call('close', args);
  }
  public function connectToUrl(url: String, ?tlsClientOptions: Variant): Int {
      var args = new ArrayList();
      args.append(url);
      if (tlsClientOptions != null) {
          args.append(tlsClientOptions);
      }
      return native.call('connect_to_url', args);
  }
  public function getCloseCode(): Int {
      var args = new ArrayList();
      return native.call('get_close_code', args);
  }
  public function getCloseReason(): String {
      var args = new ArrayList();
      return native.call('get_close_reason', args);
  }
  public function getConnectedHost(): String {
      var args = new ArrayList();
      return native.call('get_connected_host', args);
  }
  public function getConnectedPort(): Int {
      var args = new ArrayList();
      return native.call('get_connected_port', args);
  }
  public function getCurrentOutboundBufferedAmount(): Int {
      var args = new ArrayList();
      return native.call('get_current_outbound_buffered_amount', args);
  }
  public function getReadyState(): Int {
      var args = new ArrayList();
      return native.call('get_ready_state', args);
  }
  public function getRequestedUrl(): String {
      var args = new ArrayList();
      return native.call('get_requested_url', args);
  }
  public function getSelectedProtocol(): String {
      var args = new ArrayList();
      return native.call('get_selected_protocol', args);
  }
  public function poll(): Void {
      var args = new ArrayList();
      native.call('poll', args);
  }
  public function send(message: ByteArray, ?writeMode: Int): Int {
      var args = new ArrayList();
      args.append(message);
      if (writeMode != null) {
          args.append(writeMode);
      }
      return native.call('send', args);
  }
  public function sendText(message: String): Int {
      var args = new ArrayList();
      args.append(message);
      return native.call('send_text', args);
  }
  public function setNoDelay(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      native.call('set_no_delay', args);
  }
  public function wasStringPacket(): Bool {
      var args = new ArrayList();
      return native.call('was_string_packet', args);
  }
}
