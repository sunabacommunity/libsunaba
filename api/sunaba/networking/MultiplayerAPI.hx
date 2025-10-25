package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;

class MultiplayerAPI extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('MultiplayerAPI');
        }
        native = _native;
    }

    public var multiplayerPeer(get, set): MultiplayerPeer;
    function get_multiplayerPeer(): MultiplayerPeer {
        var ref: NativeReference = native.get('multiplayer_peer');
        return new MultiplayerPeer(ref);
    }
    function set_multiplayerPeer(value: MultiplayerPeer): MultiplayerPeer {
      native.set('multiplayer_peer', value.native);
        return value;
    }

	private var _connectedToServer: Signal;
	public var connectedToServer(get, default): Signal;
	function get_connectedToServer(): Signal {
	    if (_connectedToServer == null) {
	        _connectedToServer = Signal.createFromReference(native, 'connected_to_server');
	    }
	    return _connectedToServer;
	}
	private var _connectionFailed: Signal;
	public var connectionFailed(get, default): Signal;
	function get_connectionFailed(): Signal {
	    if (_connectionFailed == null) {
	        _connectionFailed = Signal.createFromReference(native, 'connection_failed');
	    }
	    return _connectionFailed;
	}
	private var _peerConnected: Signal;
	public var peerConnected(get, default): Signal;
	function get_peerConnected(): Signal {
	    if (_peerConnected == null) {
	        _peerConnected = Signal.createFromReference(native, 'peer_connected');
	    }
	    return _peerConnected;
	}
	private var _peerDisconnected: Signal;
	public var peerDisconnected(get, default): Signal;
	function get_peerDisconnected(): Signal {
	    if (_peerDisconnected == null) {
	        _peerDisconnected = Signal.createFromReference(native, 'peer_disconnected');
	    }
	    return _peerDisconnected;
	}
	private var _serverDisconnected: Signal;
	public var serverDisconnected(get, default): Signal;
	function get_serverDisconnected(): Signal {
	    if (_serverDisconnected == null) {
	        _serverDisconnected = Signal.createFromReference(native, 'server_disconnected');
	    }
	    return _serverDisconnected;
	}

  public static function createDefaultInterface(): MultiplayerAPI {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('MultiplayerAPI', 'create_default_interface', args);
      return new MultiplayerAPI(ref);
  }
  public static function getDefaultInterface(): String {
      var args = new ArrayList();
      return NativeObject.callStatic('MultiplayerAPI', 'get_default_interface', args);
  }
  public function getPeers(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_peers', args);
  }
  public function getRemoteSenderId(): Int {
      var args = new ArrayList();
      return native.call('get_remote_sender_id', args);
  }
  public function getUniqueId(): Int {
      var args = new ArrayList();
      return native.call('get_unique_id', args);
  }
  public function hasMultiplayerPeer(): Bool {
      var args = new ArrayList();
      return native.call('has_multiplayer_peer', args);
  }
  public function isServer(): Bool {
      var args = new ArrayList();
      return native.call('is_server', args);
  }
  public function objectConfigurationAdd(object: Variant, configuration: Variant): Int {
      var args = new ArrayList();
      args.append(object);
      args.append(configuration);
      return native.call('object_configuration_add', args);
  }
  public function objectConfigurationRemove(object: Variant, configuration: Variant): Int {
      var args = new ArrayList();
      args.append(object);
      args.append(configuration);
      return native.call('object_configuration_remove', args);
  }
  public function poll(): Int {
      var args = new ArrayList();
      return native.call('poll', args);
  }
  public function rpc(peer: Int, object: Variant, method: String, ?arguments: ArrayList): Int {
      var args = new ArrayList();
      args.append(peer);
      args.append(object);
      args.append(method);
      if (arguments != null) {
          args.append(arguments);
      }
      return native.call('rpc', args);
  }
  public static function setDefaultInterface(interfaceName: String): Void {
      var args = new ArrayList();
      args.append(interfaceName);
      NativeObject.callStatic('MultiplayerAPI', 'set_default_interface', args);
  }
}
