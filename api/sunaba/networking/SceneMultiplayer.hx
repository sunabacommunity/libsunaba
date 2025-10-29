package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.TypedArray;
import sunaba.core.ByteArray;

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

	private var _peerAuthenticating: Signal;
	public var peerAuthenticating(get, default): Signal;
	function get_peerAuthenticating(): Signal {
	    if (_peerAuthenticating == null) {
	        _peerAuthenticating = Signal.createFromReference(native, 'peer_authenticating');
	    }
	    return _peerAuthenticating;
	}
	private var _peerAuthenticationFailed: Signal;
	public var peerAuthenticationFailed(get, default): Signal;
	function get_peerAuthenticationFailed(): Signal {
	    if (_peerAuthenticationFailed == null) {
	        _peerAuthenticationFailed = Signal.createFromReference(native, 'peer_authentication_failed');
	    }
	    return _peerAuthenticationFailed;
	}
	private var _peerPacket: Signal;
	public var peerPacket(get, default): Signal;
	function get_peerPacket(): Signal {
	    if (_peerPacket == null) {
	        _peerPacket = Signal.createFromReference(native, 'peer_packet');
	    }
	    return _peerPacket;
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
