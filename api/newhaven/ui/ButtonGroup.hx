package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;

class ButtonGroup extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ButtonGroup');
        }
        native = _native;
    }

    public var allowUnpress(get, set): Bool;
    function get_allowUnpress(): Bool {
        return native.get('allow_unpress');
    }
    function set_allowUnpress(value: Bool): Bool {
      native.set('allow_unpress', value);
        return value;
    }

  public function getPressedButton(): BaseButton {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_pressed_button', args);
      return new BaseButton(ref);
  }
}
