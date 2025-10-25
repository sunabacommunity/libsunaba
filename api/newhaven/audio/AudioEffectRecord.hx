package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AudioEffectRecord extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectRecord');
        }
        native = _native;
    }

    public var format(get, set): Int;
    function get_format(): Int {
        return native.get('format');
    }
    function set_format(value: Int): Int {
      native.set('format', value);
        return value;
    }


  public function getRecording(): AudioStreamWAV {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_recording', args);
      return new AudioStreamWAV(ref);
  }
  public function isRecordingActive(): Bool {
      var args = new ArrayList();
      return native.call('is_recording_active', args);
  }
  public function setRecordingActive(record: Bool): Void {
      var args = new ArrayList();
      args.append(record);
      native.call('set_recording_active', args);
  }
}
