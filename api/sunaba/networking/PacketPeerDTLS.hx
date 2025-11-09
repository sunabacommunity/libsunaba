package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class PacketPeerDTLS extends PacketPeer {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('PacketPeerDTLS');
        }
        this.native = _native;
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
