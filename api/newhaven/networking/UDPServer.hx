package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class UDPServer extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('UDPServer');
        }
        native = _native;
    }

    public var maxPendingConnections(get, set): Int;
    function get_maxPendingConnections(): Int {
        return native.get('max_pending_connections');
    }
    function set_maxPendingConnections(value: Int): Int {
      native.set('max_pending_connections', value);
        return value;
    }


  public function getLocalPort(): Int {
      var args = new ArrayList();
      return native.call('get_local_port', args);
  }
  public function isConnectionAvailable(): Bool {
      var args = new ArrayList();
      return native.call('is_connection_available', args);
  }
  public function isListening(): Bool {
      var args = new ArrayList();
      return native.call('is_listening', args);
  }
  public function listen(port: Int, ?bindAddress: String): Int {
      var args = new ArrayList();
      args.append(port);
      if (bindAddress != null) {
          args.append(bindAddress);
      }
      return native.call('listen', args);
  }
  public function poll(): Int {
      var args = new ArrayList();
      return native.call('poll', args);
  }
  public function stop(): Void {
      var args = new ArrayList();
      native.call('stop', args);
  }
  public function takeConnection(): PacketPeerUDP {
      var args = new ArrayList();
      var ref: NativeReference = native.call('take_connection', args);
      return new PacketPeerUDP(ref);
  }
}
