package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class AudioStream extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStream');
        }
        native = _native;
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
