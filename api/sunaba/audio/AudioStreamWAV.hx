package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ByteArray;
import sunaba.core.Dictionary;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AudioStreamWAV extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamWAV');
        }
        native = _native;
    }

    public var data(get, set): ByteArray;
    function get_data(): ByteArray {
        return native.get('data');
    }
    function set_data(value: ByteArray): ByteArray {
      native.set('data', value);
        return value;
    }
    public var format(get, set): Int;
    function get_format(): Int {
        return native.get('format');
    }
    function set_format(value: Int): Int {
      native.set('format', value);
        return value;
    }
    public var loopBegin(get, set): Int;
    function get_loopBegin(): Int {
        return native.get('loop_begin');
    }
    function set_loopBegin(value: Int): Int {
      native.set('loop_begin', value);
        return value;
    }
    public var loopEnd(get, set): Int;
    function get_loopEnd(): Int {
        return native.get('loop_end');
    }
    function set_loopEnd(value: Int): Int {
      native.set('loop_end', value);
        return value;
    }
    public var loopMode(get, set): Int;
    function get_loopMode(): Int {
        return native.get('loop_mode');
    }
    function set_loopMode(value: Int): Int {
      native.set('loop_mode', value);
        return value;
    }
    public var mixRate(get, set): Int;
    function get_mixRate(): Int {
        return native.get('mix_rate');
    }
    function set_mixRate(value: Int): Int {
      native.set('mix_rate', value);
        return value;
    }
    public var stereo(get, set): Bool;
    function get_stereo(): Bool {
        return native.get('stereo');
    }
    function set_stereo(value: Bool): Bool {
      native.set('stereo', value);
        return value;
    }
    public var tags(get, set): Dictionary;
    function get_tags(): Dictionary {
        return native.get('tags');
    }
    function set_tags(value: Dictionary): Dictionary {
      native.set('tags', value);
        return value;
    }


  public static function loadFromBuffer(streamData: ByteArray, ?options: Dictionary): AudioStreamWAV {
      var args = new ArrayList();
      args.append(streamData);
      if (options != null) {
          args.append(options);
      }
      var ref: NativeReference = NativeObject.callStatic('AudioStreamWAV', 'load_from_buffer', args);
      return new AudioStreamWAV(ref);
  }
  public static function loadFromFile(path: String, ?options: Dictionary): AudioStreamWAV {
      var args = new ArrayList();
      args.append(path);
      if (options != null) {
          args.append(options);
      }
      var ref: NativeReference = NativeObject.callStatic('AudioStreamWAV', 'load_from_file', args);
      return new AudioStreamWAV(ref);
  }
  public function saveToWav(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('save_to_wav', args);
  }
}
