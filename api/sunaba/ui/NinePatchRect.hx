package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Rect2;
import sunaba.Texture2D;
import sunaba.core.Signal;

class NinePatchRect extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('NinePatchRect');
        }
        this.native = _native;
    }

    public var axisStretchHorizontal(get, set): Int;
    function get_axisStretchHorizontal(): Int {
        return native.get('axis_stretch_horizontal');
    }
    function set_axisStretchHorizontal(value: Int): Int {
      native.set('axis_stretch_horizontal', value);
        return value;
    }
    public var axisStretchVertical(get, set): Int;
    function get_axisStretchVertical(): Int {
        return native.get('axis_stretch_vertical');
    }
    function set_axisStretchVertical(value: Int): Int {
      native.set('axis_stretch_vertical', value);
        return value;
    }
    public var drawCenter(get, set): Bool;
    function get_drawCenter(): Bool {
        return native.get('draw_center');
    }
    function set_drawCenter(value: Bool): Bool {
      native.set('draw_center', value);
        return value;
    }
    public var patchMarginBottom(get, set): Int;
    function get_patchMarginBottom(): Int {
        return native.get('patch_margin_bottom');
    }
    function set_patchMarginBottom(value: Int): Int {
      native.set('patch_margin_bottom', value);
        return value;
    }
    public var patchMarginLeft(get, set): Int;
    function get_patchMarginLeft(): Int {
        return native.get('patch_margin_left');
    }
    function set_patchMarginLeft(value: Int): Int {
      native.set('patch_margin_left', value);
        return value;
    }
    public var patchMarginRight(get, set): Int;
    function get_patchMarginRight(): Int {
        return native.get('patch_margin_right');
    }
    function set_patchMarginRight(value: Int): Int {
      native.set('patch_margin_right', value);
        return value;
    }
    public var patchMarginTop(get, set): Int;
    function get_patchMarginTop(): Int {
        return native.get('patch_margin_top');
    }
    function set_patchMarginTop(value: Int): Int {
      native.set('patch_margin_top', value);
        return value;
    }
    public var regionRect(get, set): Rect2;
    function get_regionRect(): Rect2 {
        return native.get('region_rect');
    }
    function set_regionRect(value: Rect2): Rect2 {
      native.set('region_rect', value);
        return value;
    }
    public var texture(get, set): Texture2D;
    function get_texture(): Texture2D {
        var ref: NativeReference = native.get('texture');
        return new Texture2D(ref);
    }
    function set_texture(value: Texture2D): Texture2D {
      native.set('texture', value.native);
        return value;
    }

	private var _textureChanged: Signal;
	public var textureChanged(get, default): Signal;
	function get_textureChanged(): Signal {
	    if (_textureChanged == null) {
	        _textureChanged = Signal.createFromObject(native, 'texture_changed');
	    }
	    return _textureChanged;
	}

  public function getPatchMargin(margin: Int): Int {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_patch_margin', args);
  }
  public function setPatchMargin(margin: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(value);
      native.call('set_patch_margin', args);
  }
}
