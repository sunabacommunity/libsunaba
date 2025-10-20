package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Color;
import newhaven.core.ArrayList;
import newhaven.desktop.PopupPanel;

class ColorPickerButton extends Button {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ColorPickerButton');
        }
        native = _native;
    }

    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }
    public var editAlpha(get, set): Bool;
    function get_editAlpha(): Bool {
        return native.get('edit_alpha');
    }
    function set_editAlpha(value: Bool): Bool {
      native.set('edit_alpha', value);
        return value;
    }
    public var editIntensity(get, set): Bool;
    function get_editIntensity(): Bool {
        return native.get('edit_intensity');
    }
    function set_editIntensity(value: Bool): Bool {
      native.set('edit_intensity', value);
        return value;
    }

  public function getPopup(): PopupPanel {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_popup', args);
      return new PopupPanel(ref);
  }
}
