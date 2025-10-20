package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Dictionary;

class WebRTCMultiplayerPeer extends MultiplayerPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('WebRTCMultiplayerPeer');
        }
        native = _native;
    }



  public function addPeer(peer: Variant, peerId: Int, ?unreliableLifetime: Int): Int {
      var args = new ArrayList();
      args.append(peer);
      args.append(peerId);
      if (unreliableLifetime != null) {
          args.append(unreliableLifetime);
      }
      return native.call('add_peer', args);
  }
  public function createClient(peerId: Int, ?channelsConfig: ArrayList): Int {
      var args = new ArrayList();
      args.append(peerId);
      if (channelsConfig != null) {
          args.append(channelsConfig);
      }
      return native.call('create_client', args);
  }
  public function createMesh(peerId: Int, ?channelsConfig: ArrayList): Int {
      var args = new ArrayList();
      args.append(peerId);
      if (channelsConfig != null) {
          args.append(channelsConfig);
      }
      return native.call('create_mesh', args);
  }
  public function createServer(?channelsConfig: ArrayList): Int {
      var args = new ArrayList();
      if (channelsConfig != null) {
          args.append(channelsConfig);
      }
      return native.call('create_server', args);
  }
  public function getPeer(peerId: Int): Dictionary {
      var args = new ArrayList();
      args.append(peerId);
      return native.call('get_peer', args);
  }
  public function getPeers(): Dictionary {
      var args = new ArrayList();
      return native.call('get_peers', args);
  }
  public function hasPeer(peerId: Int): Bool {
      var args = new ArrayList();
      args.append(peerId);
      return native.call('has_peer', args);
  }
  public function removePeer(peerId: Int): Void {
      var args = new ArrayList();
      args.append(peerId);
      native.call('remove_peer', args);
  }
}
