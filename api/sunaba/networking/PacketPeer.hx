package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.ByteArray;

class PacketPeer extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('PacketPeer');
        }
        this.native = _native;
    }

    public var encodeBufferMaxSize(get, set): Int;
    function get_encodeBufferMaxSize(): Int {
        return native.get('encode_buffer_max_size');
    }
    function set_encodeBufferMaxSize(value: Int): Int {
      native.set('encode_buffer_max_size', value);
        return value;
    }


  public function getAvailablePacketCount(): Int {
      var args = new ArrayList();
      return native.call('get_available_packet_count', args);
  }
  public function getPacket(): ByteArray {
      var args = new ArrayList();
      return native.call('get_packet', args);
  }
  public function getPacketError(): Int {
      var args = new ArrayList();
      return native.call('get_packet_error', args);
  }
  public function getVar(?allowObjects: Bool): Variant {
      var args = new ArrayList();
      if (allowObjects != null) {
          args.append(allowObjects);
      }
      return native.call('get_var', args);
  }
  public function putPacket(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('put_packet', args);
  }
  public function putVar(pVar: Variant, ?fullObjects: Bool): Int {
      var args = new ArrayList();
      args.append(pVar);
      if (fullObjects != null) {
          args.append(fullObjects);
      }
      return native.call('put_var', args);
  }
}
