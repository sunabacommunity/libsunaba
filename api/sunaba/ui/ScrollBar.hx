package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ScrollBar extends Range {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ScrollBar');
        }
        this.native = _native;
    }

    public var customStep(get, set): Float;
    function get_customStep(): Float {
        return native.get('custom_step');
    }
    function set_customStep(value: Float): Float {
      native.set('custom_step', value);
        return value;
    }

	private var _scrolling: Signal;
	public var scrolling(get, default): Signal;
	function get_scrolling(): Signal {
	    if (_scrolling == null) {
	        _scrolling = Signal.createFromObject(native, 'scrolling');
	    }
	    return _scrolling;
	}

}
