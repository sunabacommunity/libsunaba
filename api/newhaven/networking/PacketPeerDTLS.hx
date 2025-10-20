package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class PacketPeerDTLS extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PacketPeerDTLS');
        }
        native = _native;
    }



  public function connectToPeer(packetPeer: PacketPeerUDP, hostname: String, ?clientOptions: Variant): Int {
      var args = new ArrayList();
      args.append(packetPeer.native);
      args.append(hostname);
      if (clientOptions != null) {
          args.append(clientOptions);
      }
      return native.call('connect_to_peer', args);
  }
  public function disconnectFromPeer(): Void {
      var args = new ArrayList();
      native.call('disconnect_from_peer', args);
  }
  public function getStatus(): Int {
      var args = new ArrayList();
      return native.call('get_status', args);
  }
  public function poll(): Void {
      var args = new ArrayList();
      native.call('poll', args);
  }
}
