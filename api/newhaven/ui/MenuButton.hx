package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.desktop.PopupMenu;

class MenuButton extends Button {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('MenuButton');
        }
        native = _native;
    }

    public var itemCount(get, set): Int;
    function get_itemCount(): Int {
        return native.get('item_count');
    }
    function set_itemCount(value: Int): Int {
      native.set('item_count', value);
        return value;
    }
    public var switchOnHover(get, set): Bool;
    function get_switchOnHover(): Bool {
        return native.get('switch_on_hover');
    }
    function set_switchOnHover(value: Bool): Bool {
      native.set('switch_on_hover', value);
        return value;
    }

	private var _aboutToPopup: Signal;
	public var aboutToPopup(get, default): Signal;
	function get_aboutToPopup(): Signal {
	    if (_aboutToPopup == null) {
	        _aboutToPopup = Signal.createFromObject(native, 'about_to_popup');
	    }
	    return _aboutToPopup;
	}

  public function getPopup(): PopupMenu {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_popup', args);
      return new PopupMenu(ref);
  }
  public function setDisableShortcuts(disabled: Bool): Void {
      var args = new ArrayList();
      args.append(disabled);
      native.call('set_disable_shortcuts', args);
  }
  public function showPopup(): Void {
      var args = new ArrayList();
      native.call('show_popup', args);
  }
}
