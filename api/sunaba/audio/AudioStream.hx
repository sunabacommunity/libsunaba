package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class AudioStream extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioStream');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioStream', native];
        scriptLoader.call('loadScript', args);
    }


	private var _parameterListChanged: Signal;
	public var parameterListChanged(get, default): Signal;
	function get_parameterListChanged(): Signal {
	    if (_parameterListChanged == null) {
	        _parameterListChanged = Signal.createFromReference(native, 'parameter_list_changed');
	    }
	    return _parameterListChanged;
	}

  public function canBeSampled(): Bool {
      var args = new ArrayList();
      return native.call('can_be_sampled', args);
  }
  public function getLength(): Float {
      var args = new ArrayList();
      return native.call('get_length', args);
  }
  public function instantiatePlayback(): AudioStreamPlayback {
      var args = new ArrayList();
      var ref: NativeReference = native.call('instantiate_playback', args);
      return new AudioStreamPlayback(ref);
  }
  public function isMetaStream(): Bool {
      var args = new ArrayList();
      return native.call('is_meta_stream', args);
  }
  public function isMonophonic(): Bool {
      var args = new ArrayList();
      return native.call('is_monophonic', args);
  }
}
