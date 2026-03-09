package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.Signal;
import sunaba.core.Color;
import sunaba.core.TypedArray;

class ColorPicker extends VBoxContainer {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ColorPicker');
        }
        this.native = _native;
    }

    public var canAddSwatches(get, set): Bool;
    function get_canAddSwatches(): Bool {
        return native.get('can_add_swatches');
    }
    function set_canAddSwatches(value: Bool): Bool {
      native.set('can_add_swatches', value);
        return value;
    }
    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }
    public var colorMode(get, set): Int;
    function get_colorMode(): Int {
        return native.get('color_mode');
    }
    function set_colorMode(value: Int): Int {
      native.set('color_mode', value);
        return value;
    }
    public var colorModesVisible(get, set): Bool;
    function get_colorModesVisible(): Bool {
        return native.get('color_modes_visible');
    }
    function set_colorModesVisible(value: Bool): Bool {
      native.set('color_modes_visible', value);
        return value;
    }
    public var deferredMode(get, set): Bool;
    function get_deferredMode(): Bool {
        return native.get('deferred_mode');
    }
    function set_deferredMode(value: Bool): Bool {
      native.set('deferred_mode', value);
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
    public var hexVisible(get, set): Bool;
    function get_hexVisible(): Bool {
        return native.get('hex_visible');
    }
    function set_hexVisible(value: Bool): Bool {
      native.set('hex_visible', value);
        return value;
    }
    public var pickerShape(get, set): Int;
    function get_pickerShape(): Int {
        return native.get('picker_shape');
    }
    function set_pickerShape(value: Int): Int {
      native.set('picker_shape', value);
        return value;
    }
    public var presetsVisible(get, set): Bool;
    function get_presetsVisible(): Bool {
        return native.get('presets_visible');
    }
    function set_presetsVisible(value: Bool): Bool {
      native.set('presets_visible', value);
        return value;
    }
    public var samplerVisible(get, set): Bool;
    function get_samplerVisible(): Bool {
        return native.get('sampler_visible');
    }
    function set_samplerVisible(value: Bool): Bool {
      native.set('sampler_visible', value);
        return value;
    }
    public var slidersVisible(get, set): Bool;
    function get_slidersVisible(): Bool {
        return native.get('sliders_visible');
    }
    function set_slidersVisible(value: Bool): Bool {
      native.set('sliders_visible', value);
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
	private var _presetAdded: Signal;
	public var presetAdded(get, default): Signal;
	function get_presetAdded(): Signal {
	    if (_presetAdded == null) {
	        _presetAdded = Signal.createFromObject(native, 'preset_added');
	    }
	    return _presetAdded;
	}
	private var _presetRemoved: Signal;
	public var presetRemoved(get, default): Signal;
	function get_presetRemoved(): Signal {
	    if (_presetRemoved == null) {
	        _presetRemoved = Signal.createFromObject(native, 'preset_removed');
	    }
	    return _presetRemoved;
	}

  public function addPreset(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('add_preset', args);
  }
  public function addRecentPreset(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('add_recent_preset', args);
  }
  public function erasePreset(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('erase_preset', args);
  }
  public function eraseRecentPreset(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('erase_recent_preset', args);
  }
  public function getPresets(): TypedArray<Color> {
      var args = new ArrayList();
      return native.call('get_presets', args);
  }
  public function getRecentPresets(): TypedArray<Color> {
      var args = new ArrayList();
      return native.call('get_recent_presets', args);
  }
}
