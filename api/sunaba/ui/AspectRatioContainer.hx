package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AspectRatioContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('AspectRatioContainer');
        }
        native = _native;
    }

    public var alignmentHorizontal(get, set): Int;
    function get_alignmentHorizontal(): Int {
        return native.get('alignment_horizontal');
    }
    function set_alignmentHorizontal(value: Int): Int {
      native.set('alignment_horizontal', value);
        return value;
    }
    public var alignmentVertical(get, set): Int;
    function get_alignmentVertical(): Int {
        return native.get('alignment_vertical');
    }
    function set_alignmentVertical(value: Int): Int {
      native.set('alignment_vertical', value);
        return value;
    }
    public var ratio(get, set): Float;
    function get_ratio(): Float {
        return native.get('ratio');
    }
    function set_ratio(value: Float): Float {
      native.set('ratio', value);
        return value;
    }
    public var stretchMode(get, set): Int;
    function get_stretchMode(): Int {
        return native.get('stretch_mode');
    }
    function set_stretchMode(value: Int): Int {
      native.set('stretch_mode', value);
        return value;
    }


}
