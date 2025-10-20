package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class FlowContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('FlowContainer');
        }
        native = _native;
    }

    public var alignment(get, set): Int;
    function get_alignment(): Int {
        return native.get('alignment');
    }
    function set_alignment(value: Int): Int {
      native.set('alignment', value);
        return value;
    }
    public var lastWrapAlignment(get, set): Int;
    function get_lastWrapAlignment(): Int {
        return native.get('last_wrap_alignment');
    }
    function set_lastWrapAlignment(value: Int): Int {
      native.set('last_wrap_alignment', value);
        return value;
    }
    public var reverseFill(get, set): Bool;
    function get_reverseFill(): Bool {
        return native.get('reverse_fill');
    }
    function set_reverseFill(value: Bool): Bool {
      native.set('reverse_fill', value);
        return value;
    }
    public var vertical(get, set): Bool;
    function get_vertical(): Bool {
        return native.get('vertical');
    }
    function set_vertical(value: Bool): Bool {
      native.set('vertical', value);
        return value;
    }

  public function getLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_line_count', args);
  }
}
