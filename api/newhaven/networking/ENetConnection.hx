package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.ByteArray;

class ENetConnection extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ENetConnection');
        }
        native = _native;
    }



  public function bandwidthLimit(?inBandwidth: Int, ?outBandwidth: Int): Void {
      var args = new ArrayList();
      if (inBandwidth != null) {
          args.append(inBandwidth);
      }
      if (outBandwidth != null) {
          args.append(outBandwidth);
      }
      native.call('bandwidth_limit', args);
  }
  public function broadcast(channel: Int, packet: ByteArray, flags: Int): Void {
      var args = new ArrayList();
      args.append(channel);
      args.append(packet);
      args.append(flags);
      native.call('broadcast', args);
  }
  public function channelLimit(limit: Int): Void {
      var args = new ArrayList();
      args.append(limit);
      native.call('channel_limit', args);
  }
  public function compress(mode: Int): Void {
      var args = new ArrayList();
      args.append(mode);
      native.call('compress', args);
  }
  public function connectToHost(address: String, port: Int, ?channels: Int, ?data: Int): ENetPacketPeer {
      var args = new ArrayList();
      args.append(address);
      args.append(port);
      if (channels != null) {
          args.append(channels);
      }
      if (data != null) {
          args.append(data);
      }
      var ref: NativeReference = native.call('connect_to_host', args);
      return new ENetPacketPeer(ref);
  }
  public function createHost(?maxPeers: Int, ?maxChannels: Int, ?inBandwidth: Int, ?outBandwidth: Int): Int {
      var args = new ArrayList();
      if (maxPeers != null) {
          args.append(maxPeers);
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
      return native.call('create_host', args);
  }
  public function createHostBound(bindAddress: String, bindPort: Int, ?maxPeers: Int, ?maxChannels: Int, ?inBandwidth: Int, ?outBandwidth: Int): Int {
      var args = new ArrayList();
      args.append(bindAddress);
      args.append(bindPort);
      if (maxPeers != null) {
          args.append(maxPeers);
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
      return native.call('create_host_bound', args);
  }
  public function destroy(): Void {
      var args = new ArrayList();
      native.call('destroy', args);
  }
  public function dtlsClientSetup(hostname: String, ?clientOptions: Variant): Int {
      var args = new ArrayList();
      args.append(hostname);
      if (clientOptions != null) {
          args.append(clientOptions);
      }
      return native.call('dtls_client_setup', args);
  }
  public function dtlsServerSetup(serverOptions: Variant): Int {
      var args = new ArrayList();
      args.append(serverOptions);
      return native.call('dtls_server_setup', args);
  }
  public function flush(): Void {
      var args = new ArrayList();
      native.call('flush', args);
  }
  public function getLocalPort(): Int {
      var args = new ArrayList();
      return native.call('get_local_port', args);
  }
  public function getMaxChannels(): Int {
      var args = new ArrayList();
      return native.call('get_max_channels', args);
  }
  public function popStatistic(statistic: Int): Float {
      var args = new ArrayList();
      args.append(statistic);
      return native.call('pop_statistic', args);
  }
  public function refuseNewConnections(refuse: Bool): Void {
      var args = new ArrayList();
      args.append(refuse);
      native.call('refuse_new_connections', args);
  }
  public function service(?timeout: Int): ArrayList {
      var args = new ArrayList();
      if (timeout != null) {
          args.append(timeout);
      }
      return native.call('service', args);
  }
  public function socketSend(destinationAddress: String, destinationPort: Int, packet: ByteArray): Void {
      var args = new ArrayList();
      args.append(destinationAddress);
      args.append(destinationPort);
      args.append(packet);
      native.call('socket_send', args);
  }
}
