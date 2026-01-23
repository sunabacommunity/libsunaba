package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeInput extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeInput');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeInput', native];
        scriptLoader.call('loadScript', args);
    }

    public var inputName(get, set): String;
    function get_inputName(): String {
        return native.get('input_name');
    }
    function set_inputName(value: String): String {
      native.set('input_name', value);
        return value;
    }

	private var _inputTypeChanged: Signal;
	public var inputTypeChanged(get, default): Signal;
	function get_inputTypeChanged(): Signal {
	    if (_inputTypeChanged == null) {
	        _inputTypeChanged = Signal.createFromReference(native, 'input_type_changed');
	    }
	    return _inputTypeChanged;
	}

  public function getInputRealName(): String {
      var args = new ArrayList();
      return native.call('get_input_real_name', args);
  }
}
