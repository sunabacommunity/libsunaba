package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

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
