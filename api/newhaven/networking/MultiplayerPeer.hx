package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class MultiplayerPeer extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('MultiplayerPeer');
        }
        native = _native;
    }

    public var refuseNewConnections(get, set): Bool;
    function get_refuseNewConnections(): Bool {
        return native.get('refuse_new_connections');
    }
    function set_refuseNewConnections(value: Bool): Bool {
      native.set('refuse_new_connections', value);
        return value;
    }
    public var transferChannel(get, set): Int;
    function get_transferChannel(): Int {
        return native.get('transfer_channel');
    }
    function set_transferChannel(value: Int): Int {
      native.set('transfer_channel', value);
        return value;
    }
    public var transferMode(get, set): Int;
    function get_transferMode(): Int {
        return native.get('transfer_mode');
    }
    function set_transferMode(value: Int): Int {
      native.set('transfer_mode', value);
        return value;
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

  public function close(): Void {
      var args = new ArrayList();
      native.call('close', args);
  }
  public function disconnectPeer(peer: Int, ?force: Bool): Void {
      var args = new ArrayList();
      args.append(peer);
      if (force != null) {
          args.append(force);
      }
      native.call('disconnect_peer', args);
  }
  public function generateUniqueId(): Int {
      var args = new ArrayList();
      return native.call('generate_unique_id', args);
  }
  public function getConnectionStatus(): Int {
      var args = new ArrayList();
      return native.call('get_connection_status', args);
  }
  public function getPacketChannel(): Int {
      var args = new ArrayList();
      return native.call('get_packet_channel', args);
  }
  public function getPacketMode(): Int {
      var args = new ArrayList();
      return native.call('get_packet_mode', args);
  }
  public function getPacketPeer(): Int {
      var args = new ArrayList();
      return native.call('get_packet_peer', args);
  }
  public function getUniqueId(): Int {
      var args = new ArrayList();
      return native.call('get_unique_id', args);
  }
  public function isServerRelaySupported(): Bool {
      var args = new ArrayList();
      return native.call('is_server_relay_supported', args);
  }
  public function poll(): Void {
      var args = new ArrayList();
      native.call('poll', args);
  }
  public function setTargetPeer(id: Int): Void {
      var args = new ArrayList();
      args.append(id);
      native.call('set_target_peer', args);
  }
}
