package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Color;
import sunaba.core.Rect2;
import sunaba.Texture2D;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class StyleBoxTexture extends StyleBox {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('StyleBoxTexture');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['StyleBoxTexture', native];
        scriptLoader.call('loadScript', args);
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
    public var expandMarginBottom(get, set): Float;
    function get_expandMarginBottom(): Float {
        return native.get('expand_margin_bottom');
    }
    function set_expandMarginBottom(value: Float): Float {
      native.set('expand_margin_bottom', value);
        return value;
    }
    public var expandMarginLeft(get, set): Float;
    function get_expandMarginLeft(): Float {
        return native.get('expand_margin_left');
    }
    function set_expandMarginLeft(value: Float): Float {
      native.set('expand_margin_left', value);
        return value;
    }
    public var expandMarginRight(get, set): Float;
    function get_expandMarginRight(): Float {
        return native.get('expand_margin_right');
    }
    function set_expandMarginRight(value: Float): Float {
      native.set('expand_margin_right', value);
        return value;
    }
    public var expandMarginTop(get, set): Float;
    function get_expandMarginTop(): Float {
        return native.get('expand_margin_top');
    }
    function set_expandMarginTop(value: Float): Float {
      native.set('expand_margin_top', value);
        return value;
    }
    public var modulateColor(get, set): Color;
    function get_modulateColor(): Color {
        return native.get('modulate_color');
    }
    function set_modulateColor(value: Color): Color {
      native.set('modulate_color', value);
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
    public var textureMarginBottom(get, set): Float;
    function get_textureMarginBottom(): Float {
        return native.get('texture_margin_bottom');
    }
    function set_textureMarginBottom(value: Float): Float {
      native.set('texture_margin_bottom', value);
        return value;
    }
    public var textureMarginLeft(get, set): Float;
    function get_textureMarginLeft(): Float {
        return native.get('texture_margin_left');
    }
    function set_textureMarginLeft(value: Float): Float {
      native.set('texture_margin_left', value);
        return value;
    }
    public var textureMarginRight(get, set): Float;
    function get_textureMarginRight(): Float {
        return native.get('texture_margin_right');
    }
    function set_textureMarginRight(value: Float): Float {
      native.set('texture_margin_right', value);
        return value;
    }
    public var textureMarginTop(get, set): Float;
    function get_textureMarginTop(): Float {
        return native.get('texture_margin_top');
    }
    function set_textureMarginTop(value: Float): Float {
      native.set('texture_margin_top', value);
        return value;
    }


  public function getExpandMargin(margin: Int): Float {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_expand_margin', args);
  }
  public function getTextureMargin(margin: Int): Float {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_texture_margin', args);
  }
  public function setExpandMargin(margin: Int, size: Float): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(size);
      native.call('set_expand_margin', args);
  }
  public function setExpandMarginAll(size: Float): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('set_expand_margin_all', args);
  }
  public function setTextureMargin(margin: Int, size: Float): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(size);
      native.call('set_texture_margin', args);
  }
  public function setTextureMarginAll(size: Float): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('set_texture_margin_all', args);
  }
}
