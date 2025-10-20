package newhaven.desktop;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class Popup extends Window {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Popup');
        }
        native = _native;
    }


	private var _popupHide: Signal;
	public var popupHide(get, default): Signal;
	function get_popupHide(): Signal {
	    if (_popupHide == null) {
	        _popupHide = Signal.createFromObject(native, 'popup_hide');
	    }
	    return _popupHide;
	}

}
