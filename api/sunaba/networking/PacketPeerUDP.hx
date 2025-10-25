package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class PacketPeerUDP extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PacketPeerUDP');
        }
        native = _native;
    }



  public function bind(port: Int, ?bindAddress: String, ?recvBufSize: Int): Int {
      var args = new ArrayList();
      args.append(port);
      if (bindAddress != null) {
          args.append(bindAddress);
      }
      if (recvBufSize != null) {
          args.append(recvBufSize);
      }
      return native.call('bind', args);
  }
  public function close(): Void {
      var args = new ArrayList();
      native.call('close', args);
  }
  public function connectToHost(host: String, port: Int): Int {
      var args = new ArrayList();
      args.append(host);
      args.append(port);
      return native.call('connect_to_host', args);
  }
  public function getLocalPort(): Int {
      var args = new ArrayList();
      return native.call('get_local_port', args);
  }
  public function getPacketIp(): String {
      var args = new ArrayList();
      return native.call('get_packet_ip', args);
  }
  public function getPacketPort(): Int {
      var args = new ArrayList();
      return native.call('get_packet_port', args);
  }
  public function isBound(): Bool {
      var args = new ArrayList();
      return native.call('is_bound', args);
  }
  public function isSocketConnected(): Bool {
      var args = new ArrayList();
      return native.call('is_socket_connected', args);
  }
  public function joinMulticastGroup(multicastAddress: String, interfaceName: String): Int {
      var args = new ArrayList();
      args.append(multicastAddress);
      args.append(interfaceName);
      return native.call('join_multicast_group', args);
  }
  public function leaveMulticastGroup(multicastAddress: String, interfaceName: String): Int {
      var args = new ArrayList();
      args.append(multicastAddress);
      args.append(interfaceName);
      return native.call('leave_multicast_group', args);
  }
  public function setBroadcastEnabled(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      native.call('set_broadcast_enabled', args);
  }
  public function setDestAddress(host: String, port: Int): Int {
      var args = new ArrayList();
      args.append(host);
      args.append(port);
      return native.call('set_dest_address', args);
  }
  public function wait(): Int {
      var args = new ArrayList();
      return native.call('wait', args);
  }
}
