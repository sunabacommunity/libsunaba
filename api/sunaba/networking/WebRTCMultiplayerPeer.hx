package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

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
