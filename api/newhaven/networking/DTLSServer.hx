package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

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
