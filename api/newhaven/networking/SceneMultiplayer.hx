package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;
import newhaven.core.ByteArray;

class SceneMultiplayer extends MultiplayerAPI {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SceneMultiplayer');
        }
        native = _native;
    }

    public var allowObjectDecoding(get, set): Bool;
    function get_allowObjectDecoding(): Bool {
        return native.get('allow_object_decoding');
    }
    function set_allowObjectDecoding(value: Bool): Bool {
      native.set('allow_object_decoding', value);
        return value;
    }
    public var authTimeout(get, set): Float;
    function get_authTimeout(): Float {
        return native.get('auth_timeout');
    }
    function set_authTimeout(value: Float): Float {
      native.set('auth_timeout', value);
        return value;
    }
    public var maxDeltaPacketSize(get, set): Int;
    function get_maxDeltaPacketSize(): Int {
        return native.get('max_delta_packet_size');
    }
    function set_maxDeltaPacketSize(value: Int): Int {
      native.set('max_delta_packet_size', value);
        return value;
    }
    public var maxSyncPacketSize(get, set): Int;
    function get_maxSyncPacketSize(): Int {
        return native.get('max_sync_packet_size');
    }
    function set_maxSyncPacketSize(value: Int): Int {
      native.set('max_sync_packet_size', value);
        return value;
    }
    public var refuseNewConnections(get, set): Bool;
    function get_refuseNewConnections(): Bool {
        return native.get('refuse_new_connections');
    }
    function set_refuseNewConnections(value: Bool): Bool {
      native.set('refuse_new_connections', value);
        return value;
    }
    public var rootPath(get, set): String;
    function get_rootPath(): String {
        return native.get('root_path');
    }
    function set_rootPath(value: String): String {
      native.set('root_path', value);
        return value;
    }
    public var serverRelay(get, set): Bool;
    function get_serverRelay(): Bool {
        return native.get('server_relay');
    }
    function set_serverRelay(value: Bool): Bool {
      native.set('server_relay', value);
        return value;
    }

  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function completeAuth(id: Int): Int {
      var args = new ArrayList();
      args.append(id);
      return native.call('complete_auth', args);
  }
  public function disconnectPeer(id: Int): Void {
      var args = new ArrayList();
      args.append(id);
      native.call('disconnect_peer', args);
  }
  public function getAuthenticatingPeers(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_authenticating_peers', args);
  }
  public function sendAuth(id: Int, data: ByteArray): Int {
      var args = new ArrayList();
      args.append(id);
      args.append(data);
      return native.call('send_auth', args);
  }
  public function sendBytes(bytes: ByteArray, ?id: Int, ?mode: Int, ?channel: Int): Int {
      var args = new ArrayList();
      args.append(bytes);
      if (id != null) {
          args.append(id);
      }
      if (mode != null) {
          args.append(mode);
      }
      if (channel != null) {
          args.append(channel);
      }
      return native.call('send_bytes', args);
  }
}
