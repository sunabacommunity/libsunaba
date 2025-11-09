package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.ui.Button;
import sunaba.ui.Label;
import sunaba.ui.LineEdit;

class AcceptDialog extends Window {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('AcceptDialog');
        }
        this.native = _native;
    }

    public var dialogAutowrap(get, set): Bool;
    function get_dialogAutowrap(): Bool {
        return native.get('dialog_autowrap');
    }
    function set_dialogAutowrap(value: Bool): Bool {
      native.set('dialog_autowrap', value);
        return value;
    }
    public var dialogCloseOnEscape(get, set): Bool;
    function get_dialogCloseOnEscape(): Bool {
        return native.get('dialog_close_on_escape');
    }
    function set_dialogCloseOnEscape(value: Bool): Bool {
      native.set('dialog_close_on_escape', value);
        return value;
    }
    public var dialogHideOnOk(get, set): Bool;
    function get_dialogHideOnOk(): Bool {
        return native.get('dialog_hide_on_ok');
    }
    function set_dialogHideOnOk(value: Bool): Bool {
      native.set('dialog_hide_on_ok', value);
        return value;
    }
    public var dialogText(get, set): String;
    function get_dialogText(): String {
        return native.get('dialog_text');
    }
    function set_dialogText(value: String): String {
      native.set('dialog_text', value);
        return value;
    }
    public var okButtonText(get, set): String;
    function get_okButtonText(): String {
        return native.get('ok_button_text');
    }
    function set_okButtonText(value: String): String {
      native.set('ok_button_text', value);
        return value;
    }

	private var _canceled: Signal;
	public var canceled(get, default): Signal;
	function get_canceled(): Signal {
	    if (_canceled == null) {
	        _canceled = Signal.createFromObject(native, 'canceled');
	    }
	    return _canceled;
	}
	private var _confirmed: Signal;
	public var confirmed(get, default): Signal;
	function get_confirmed(): Signal {
	    if (_confirmed == null) {
	        _confirmed = Signal.createFromObject(native, 'confirmed');
	    }
	    return _confirmed;
	}
	private var _customAction: Signal;
	public var customAction(get, default): Signal;
	function get_customAction(): Signal {
	    if (_customAction == null) {
	        _customAction = Signal.createFromObject(native, 'custom_action');
	    }
	    return _customAction;
	}

  public function addButton(text: String, ?right: Bool, ?action: String): Button {
      var args = new ArrayList();
      args.append(text);
      if (right != null) {
          args.append(right);
      }
      if (action != null) {
          args.append(action);
      }
      var ref: NativeObject = native.call('add_button', args);
      return new Button(ref);
  }
  public function addCancelButton(name: String): Button {
      var args = new ArrayList();
      args.append(name);
      var ref: NativeObject = native.call('add_cancel_button', args);
      return new Button(ref);
  }
  public function getLabel(): Label {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_label', args);
      return new Label(ref);
  }
  public function getOkButton(): Button {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_ok_button', args);
      return new Button(ref);
  }
  public function registerTextEnter(lineEdit: LineEdit): Void {
      var args = new ArrayList();
      args.append(lineEdit.native);
      native.call('register_text_enter', args);
  }
  public function removeButton(button: Button): Void {
      var args = new ArrayList();
      args.append(button.native);
      native.call('remove_button', args);
  }
}
