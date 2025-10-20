package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.desktop.PopupMenu;

class MenuBar extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('MenuBar');
        }
        native = _native;
    }

    public var flat(get, set): Bool;
    function get_flat(): Bool {
        return native.get('flat');
    }
    function set_flat(value: Bool): Bool {
      native.set('flat', value);
        return value;
    }
    public var language(get, set): String;
    function get_language(): String {
        return native.get('language');
    }
    function set_language(value: String): String {
      native.set('language', value);
        return value;
    }
    public var preferGlobalMenu(get, set): Bool;
    function get_preferGlobalMenu(): Bool {
        return native.get('prefer_global_menu');
    }
    function set_preferGlobalMenu(value: Bool): Bool {
      native.set('prefer_global_menu', value);
        return value;
    }
    public var startIndex(get, set): Int;
    function get_startIndex(): Int {
        return native.get('start_index');
    }
    function set_startIndex(value: Int): Int {
      native.set('start_index', value);
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
    public var textDirection(get, set): Int;
    function get_textDirection(): Int {
        return native.get('text_direction');
    }
    function set_textDirection(value: Int): Int {
      native.set('text_direction', value);
        return value;
    }


  public function getMenuCount(): Int {
      var args = new ArrayList();
      return native.call('get_menu_count', args);
  }
  public function getMenuPopup(menu: Int): PopupMenu {
      var args = new ArrayList();
      args.append(menu);
      var ref: NativeObject = native.call('get_menu_popup', args);
      return new PopupMenu(ref);
  }
  public function getMenuTitle(menu: Int): String {
      var args = new ArrayList();
      args.append(menu);
      return native.call('get_menu_title', args);
  }
  public function getMenuTooltip(menu: Int): String {
      var args = new ArrayList();
      args.append(menu);
      return native.call('get_menu_tooltip', args);
  }
  public function isMenuDisabled(menu: Int): Bool {
      var args = new ArrayList();
      args.append(menu);
      return native.call('is_menu_disabled', args);
  }
  public function isMenuHidden(menu: Int): Bool {
      var args = new ArrayList();
      args.append(menu);
      return native.call('is_menu_hidden', args);
  }
  public function isNativeMenu(): Bool {
      var args = new ArrayList();
      return native.call('is_native_menu', args);
  }
  public function setDisableShortcuts(disabled: Bool): Void {
      var args = new ArrayList();
      args.append(disabled);
      native.call('set_disable_shortcuts', args);
  }
  public function setMenuDisabled(menu: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(menu);
      args.append(disabled);
      native.call('set_menu_disabled', args);
  }
  public function setMenuHidden(menu: Int, hidden: Bool): Void {
      var args = new ArrayList();
      args.append(menu);
      args.append(hidden);
      native.call('set_menu_hidden', args);
  }
  public function setMenuTitle(menu: Int, title: String): Void {
      var args = new ArrayList();
      args.append(menu);
      args.append(title);
      native.call('set_menu_title', args);
  }
  public function setMenuTooltip(menu: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(menu);
      args.append(tooltip);
      native.call('set_menu_tooltip', args);
  }
}
