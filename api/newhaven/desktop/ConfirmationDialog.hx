package newhaven.desktop;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.ui.Button;

class ConfirmationDialog extends AcceptDialog {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ConfirmationDialog');
        }
        native = _native;
    }

    public var cancelButtonText(get, set): String;
    function get_cancelButtonText(): String {
        return native.get('cancel_button_text');
    }
    function set_cancelButtonText(value: String): String {
      native.set('cancel_button_text', value);
        return value;
    }


  public function getCancelButton(): Button {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_cancel_button', args);
      return new Button(ref);
  }
}
