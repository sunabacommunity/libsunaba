package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class ButtonGroup extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ButtonGroup');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ButtonGroup', native];
        scriptLoader.call('loadScript', args);
    }

    public var allowUnpress(get, set): Bool;
    function get_allowUnpress(): Bool {
        return native.get('allow_unpress');
    }
    function set_allowUnpress(value: Bool): Bool {
      native.set('allow_unpress', value);
        return value;
    }

	private var _pressed: Signal;
	public var pressed(get, default): Signal;
	function get_pressed(): Signal {
	    if (_pressed == null) {
	        _pressed = Signal.createFromReference(native, 'pressed');
	    }
	    return _pressed;
	}

  public function getPressedButton(): BaseButton {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_pressed_button', args);
      return new BaseButton(ref);
  }
}
