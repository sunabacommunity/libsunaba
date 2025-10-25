package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class DTLSServer extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('DTLSServer');
        }
        native = _native;
    }



  public function setup(serverOptions: Variant): Int {
      var args = new ArrayList();
      args.append(serverOptions);
      return native.call('setup', args);
  }
  public function takeConnection(udpPeer: PacketPeerUDP): PacketPeerDTLS {
      var args = new ArrayList();
      args.append(udpPeer.native);
      var ref: NativeReference = native.call('take_connection', args);
      return new PacketPeerDTLS(ref);
  }
}
