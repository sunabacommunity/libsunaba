package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;

class GraphElement extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GraphElement');
        }
        native = _native;
    }

    public var draggable(get, set): Bool;
    function get_draggable(): Bool {
        return native.get('draggable');
    }
    function set_draggable(value: Bool): Bool {
      native.set('draggable', value);
        return value;
    }
    public var positionOffset(get, set): Vector2;
    function get_positionOffset(): Vector2 {
        return native.get('position_offset');
    }
    function set_positionOffset(value: Vector2): Vector2 {
      native.set('position_offset', value);
        return value;
    }
    public var resizable(get, set): Bool;
    function get_resizable(): Bool {
        return native.get('resizable');
    }
    function set_resizable(value: Bool): Bool {
      native.set('resizable', value);
        return value;
    }
    public var selectable(get, set): Bool;
    function get_selectable(): Bool {
        return native.get('selectable');
    }
    function set_selectable(value: Bool): Bool {
      native.set('selectable', value);
        return value;
    }
    public var selected(get, set): Bool;
    function get_selected(): Bool {
        return native.get('selected');
    }
    function set_selected(value: Bool): Bool {
      native.set('selected', value);
        return value;
    }

}
