package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.ui.Button;

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
