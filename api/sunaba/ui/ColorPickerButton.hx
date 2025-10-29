package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.Signal;
import sunaba.desktop.PopupPanel;

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

	private var _colorChanged: Signal;
	public var colorChanged(get, default): Signal;
	function get_colorChanged(): Signal {
	    if (_colorChanged == null) {
	        _colorChanged = Signal.createFromObject(native, 'color_changed');
	    }
	    return _colorChanged;
	}
	private var _pickerCreated: Signal;
	public var pickerCreated(get, default): Signal;
	function get_pickerCreated(): Signal {
	    if (_pickerCreated == null) {
	        _pickerCreated = Signal.createFromObject(native, 'picker_created');
	    }
	    return _pickerCreated;
	}
	private var _popupClosed: Signal;
	public var popupClosed(get, default): Signal;
	function get_popupClosed(): Signal {
	    if (_popupClosed == null) {
	        _popupClosed = Signal.createFromObject(native, 'popup_closed');
	    }
	    return _popupClosed;
	}

  public function getPopup(): PopupPanel {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_popup', args);
      return new PopupPanel(ref);
  }
}
