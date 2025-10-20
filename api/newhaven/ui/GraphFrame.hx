package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Color;
import newhaven.core.ArrayList;

class GraphFrame extends GraphElement {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GraphFrame');
        }
        native = _native;
    }

    public var autoshrinkEnabled(get, set): Bool;
    function get_autoshrinkEnabled(): Bool {
        return native.get('autoshrink_enabled');
    }
    function set_autoshrinkEnabled(value: Bool): Bool {
      native.set('autoshrink_enabled', value);
        return value;
    }
    public var autoshrinkMargin(get, set): Int;
    function get_autoshrinkMargin(): Int {
        return native.get('autoshrink_margin');
    }
    function set_autoshrinkMargin(value: Int): Int {
      native.set('autoshrink_margin', value);
        return value;
    }
    public var dragMargin(get, set): Int;
    function get_dragMargin(): Int {
        return native.get('drag_margin');
    }
    function set_dragMargin(value: Int): Int {
      native.set('drag_margin', value);
        return value;
    }
    public var tintColor(get, set): Color;
    function get_tintColor(): Color {
        return native.get('tint_color');
    }
    function set_tintColor(value: Color): Color {
      native.set('tint_color', value);
        return value;
    }
    public var tintColorEnabled(get, set): Bool;
    function get_tintColorEnabled(): Bool {
        return native.get('tint_color_enabled');
    }
    function set_tintColorEnabled(value: Bool): Bool {
      native.set('tint_color_enabled', value);
        return value;
    }
    public var title(get, set): String;
    function get_title(): String {
        return native.get('title');
    }
    function set_title(value: String): String {
      native.set('title', value);
        return value;
    }

  public function getTitlebarHbox(): HBoxContainer {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_titlebar_hbox', args);
      return new HBoxContainer(ref);
  }
}
