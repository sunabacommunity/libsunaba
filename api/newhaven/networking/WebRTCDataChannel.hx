package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class WebRTCDataChannel extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('WebRTCDataChannel');
        }
        native = _native;
    }

    public var writeMode(get, set): Int;
    function get_writeMode(): Int {
        return native.get('write_mode');
    }
    function set_writeMode(value: Int): Int {
      native.set('write_mode', value);
        return value;
    }


  public function close(): Void {
      var args = new ArrayList();
      native.call('close', args);
  }
  public function getBufferedAmount(): Int {
      var args = new ArrayList();
      return native.call('get_buffered_amount', args);
  }
  public function getId(): Int {
      var args = new ArrayList();
      return native.call('get_id', args);
  }
  public function getLabel(): String {
      var args = new ArrayList();
      return native.call('get_label', args);
  }
  public function getMaxPacketLifeTime(): Int {
      var args = new ArrayList();
      return native.call('get_max_packet_life_time', args);
  }
  public function getMaxRetransmits(): Int {
      var args = new ArrayList();
      return native.call('get_max_retransmits', args);
  }
  public function getProtocol(): String {
      var args = new ArrayList();
      return native.call('get_protocol', args);
  }
  public function getReadyState(): Int {
      var args = new ArrayList();
      return native.call('get_ready_state', args);
  }
  public function isNegotiated(): Bool {
      var args = new ArrayList();
      return native.call('is_negotiated', args);
  }
  public function isOrdered(): Bool {
      var args = new ArrayList();
      return native.call('is_ordered', args);
  }
  public function poll(): Int {
      var args = new ArrayList();
      return native.call('poll', args);
  }
  public function wasStringPacket(): Bool {
      var args = new ArrayList();
      return native.call('was_string_packet', args);
  }
}
