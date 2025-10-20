package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class ScrollBar extends Range {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ScrollBar');
        }
        native = _native;
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
