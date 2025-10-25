package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.ByteArray;

class ENetPacketPeer extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ENetPacketPeer');
        }
        native = _native;
    }



  public function getChannels(): Int {
      var args = new ArrayList();
      return native.call('get_channels', args);
  }
  public function getPacketFlags(): Int {
      var args = new ArrayList();
      return native.call('get_packet_flags', args);
  }
  public function getRemoteAddress(): String {
      var args = new ArrayList();
      return native.call('get_remote_address', args);
  }
  public function getRemotePort(): Int {
      var args = new ArrayList();
      return native.call('get_remote_port', args);
  }
  public function getState(): Int {
      var args = new ArrayList();
      return native.call('get_state', args);
  }
  public function getStatistic(statistic: Int): Float {
      var args = new ArrayList();
      args.append(statistic);
      return native.call('get_statistic', args);
  }
  public function isActive(): Bool {
      var args = new ArrayList();
      return native.call('is_active', args);
  }
  public function peerDisconnect(?data: Int): Void {
      var args = new ArrayList();
      if (data != null) {
          args.append(data);
      }
      native.call('peer_disconnect', args);
  }
  public function peerDisconnectLater(?data: Int): Void {
      var args = new ArrayList();
      if (data != null) {
          args.append(data);
      }
      native.call('peer_disconnect_later', args);
  }
  public function peerDisconnectNow(?data: Int): Void {
      var args = new ArrayList();
      if (data != null) {
          args.append(data);
      }
      native.call('peer_disconnect_now', args);
  }
  public function ping(): Void {
      var args = new ArrayList();
      native.call('ping', args);
  }
  public function pingInterval(pingInterval: Int): Void {
      var args = new ArrayList();
      args.append(pingInterval);
      native.call('ping_interval', args);
  }
  public function reset(): Void {
      var args = new ArrayList();
      native.call('reset', args);
  }
  public function send(channel: Int, packet: ByteArray, flags: Int): Int {
      var args = new ArrayList();
      args.append(channel);
      args.append(packet);
      args.append(flags);
      return native.call('send', args);
  }
  public function setTimeout(timeout: Int, timeoutMin: Int, timeoutMax: Int): Void {
      var args = new ArrayList();
      args.append(timeout);
      args.append(timeoutMin);
      args.append(timeoutMax);
      native.call('set_timeout', args);
  }
  public function throttleConfigure(interval: Int, acceleration: Int, deceleration: Int): Void {
      var args = new ArrayList();
      args.append(interval);
      args.append(acceleration);
      args.append(deceleration);
      native.call('throttle_configure', args);
  }
}
