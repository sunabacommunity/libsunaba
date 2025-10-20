package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class ENetMultiplayerPeer extends MultiplayerPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ENetMultiplayerPeer');
        }
        native = _native;
    }

    public var host(get, set): ENetConnection;
    function get_host(): ENetConnection {
        var ref: NativeReference = native.get('host');
        return new ENetConnection(ref);
    }
    function set_host(value: ENetConnection): ENetConnection {
      native.set('host', value.native);
        return value;
    }

  public function addMeshPeer(peerId: Int, host: ENetConnection): Int {
      var args = new ArrayList();
      args.append(peerId);
      args.append(host.native);
      return native.call('add_mesh_peer', args);
  }
  public function createClient(address: String, port: Int, ?channelCount: Int, ?inBandwidth: Int, ?outBandwidth: Int, ?localPort: Int): Int {
      var args = new ArrayList();
      args.append(address);
      args.append(port);
      if (channelCount != null) {
          args.append(channelCount);
      }
      if (inBandwidth != null) {
          args.append(inBandwidth);
      }
      if (outBandwidth != null) {
          args.append(outBandwidth);
      }
      if (localPort != null) {
          args.append(localPort);
      }
      return native.call('create_client', args);
  }
  public function createMesh(uniqueId: Int): Int {
      var args = new ArrayList();
      args.append(uniqueId);
      return native.call('create_mesh', args);
  }
  public function createServer(port: Int, ?maxClients: Int, ?maxChannels: Int, ?inBandwidth: Int, ?outBandwidth: Int): Int {
      var args = new ArrayList();
      args.append(port);
      if (maxClients != null) {
          args.append(maxClients);
      }
      if (maxChannels != null) {
          args.append(maxChannels);
      }
      if (inBandwidth != null) {
          args.append(inBandwidth);
      }
      if (outBandwidth != null) {
          args.append(outBandwidth);
      }
      return native.call('create_server', args);
  }
  public function getPeer(id: Int): ENetPacketPeer {
      var args = new ArrayList();
      args.append(id);
      var ref: NativeReference = native.call('get_peer', args);
      return new ENetPacketPeer(ref);
  }
  public function setBindIp(ip: String): Void {
      var args = new ArrayList();
      args.append(ip);
      native.call('set_bind_ip', args);
  }
}
