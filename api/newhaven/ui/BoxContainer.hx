package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class BoxContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('BoxContainer');
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
    public var vertical(get, set): Bool;
    function get_vertical(): Bool {
        return native.get('vertical');
    }
    function set_vertical(value: Bool): Bool {
      native.set('vertical', value);
        return value;
    }


  public function addSpacer(begin: Bool): Control {
      var args = new ArrayList();
      args.append(begin);
      var ref: NativeObject = native.call('add_spacer', args);
      return new Control(ref);
  }
}
