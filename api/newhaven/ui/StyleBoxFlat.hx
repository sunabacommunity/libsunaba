package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Color;
import sunaba.core.Vector2;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class StyleBoxFlat extends StyleBox {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('StyleBoxFlat');
        }
        native = _native;
    }

    public var antiAliasing(get, set): Bool;
    function get_antiAliasing(): Bool {
        return native.get('anti_aliasing');
    }
    function set_antiAliasing(value: Bool): Bool {
      native.set('anti_aliasing', value);
        return value;
    }
    public var antiAliasingSize(get, set): Float;
    function get_antiAliasingSize(): Float {
        return native.get('anti_aliasing_size');
    }
    function set_antiAliasingSize(value: Float): Float {
      native.set('anti_aliasing_size', value);
        return value;
    }
    public var bgColor(get, set): Color;
    function get_bgColor(): Color {
        return native.get('bg_color');
    }
    function set_bgColor(value: Color): Color {
      native.set('bg_color', value);
        return value;
    }
    public var borderBlend(get, set): Bool;
    function get_borderBlend(): Bool {
        return native.get('border_blend');
    }
    function set_borderBlend(value: Bool): Bool {
      native.set('border_blend', value);
        return value;
    }
    public var borderColor(get, set): Color;
    function get_borderColor(): Color {
        return native.get('border_color');
    }
    function set_borderColor(value: Color): Color {
      native.set('border_color', value);
        return value;
    }
    public var borderWidthBottom(get, set): Int;
    function get_borderWidthBottom(): Int {
        return native.get('border_width_bottom');
    }
    function set_borderWidthBottom(value: Int): Int {
      native.set('border_width_bottom', value);
        return value;
    }
    public var borderWidthLeft(get, set): Int;
    function get_borderWidthLeft(): Int {
        return native.get('border_width_left');
    }
    function set_borderWidthLeft(value: Int): Int {
      native.set('border_width_left', value);
        return value;
    }
    public var borderWidthRight(get, set): Int;
    function get_borderWidthRight(): Int {
        return native.get('border_width_right');
    }
    function set_borderWidthRight(value: Int): Int {
      native.set('border_width_right', value);
        return value;
    }
    public var borderWidthTop(get, set): Int;
    function get_borderWidthTop(): Int {
        return native.get('border_width_top');
    }
    function set_borderWidthTop(value: Int): Int {
      native.set('border_width_top', value);
        return value;
    }
    public var cornerDetail(get, set): Int;
    function get_cornerDetail(): Int {
        return native.get('corner_detail');
    }
    function set_cornerDetail(value: Int): Int {
      native.set('corner_detail', value);
        return value;
    }
    public var cornerRadiusBottomLeft(get, set): Int;
    function get_cornerRadiusBottomLeft(): Int {
        return native.get('corner_radius_bottom_left');
    }
    function set_cornerRadiusBottomLeft(value: Int): Int {
      native.set('corner_radius_bottom_left', value);
        return value;
    }
    public var cornerRadiusBottomRight(get, set): Int;
    function get_cornerRadiusBottomRight(): Int {
        return native.get('corner_radius_bottom_right');
    }
    function set_cornerRadiusBottomRight(value: Int): Int {
      native.set('corner_radius_bottom_right', value);
        return value;
    }
    public var cornerRadiusTopLeft(get, set): Int;
    function get_cornerRadiusTopLeft(): Int {
        return native.get('corner_radius_top_left');
    }
    function set_cornerRadiusTopLeft(value: Int): Int {
      native.set('corner_radius_top_left', value);
        return value;
    }
    public var cornerRadiusTopRight(get, set): Int;
    function get_cornerRadiusTopRight(): Int {
        return native.get('corner_radius_top_right');
    }
    function set_cornerRadiusTopRight(value: Int): Int {
      native.set('corner_radius_top_right', value);
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
    public var shadowColor(get, set): Color;
    function get_shadowColor(): Color {
        return native.get('shadow_color');
    }
    function set_shadowColor(value: Color): Color {
      native.set('shadow_color', value);
        return value;
    }
    public var shadowOffset(get, set): Vector2;
    function get_shadowOffset(): Vector2 {
        return native.get('shadow_offset');
    }
    function set_shadowOffset(value: Vector2): Vector2 {
      native.set('shadow_offset', value);
        return value;
    }
    public var shadowSize(get, set): Int;
    function get_shadowSize(): Int {
        return native.get('shadow_size');
    }
    function set_shadowSize(value: Int): Int {
      native.set('shadow_size', value);
        return value;
    }
    public var skew(get, set): Vector2;
    function get_skew(): Vector2 {
        return native.get('skew');
    }
    function set_skew(value: Vector2): Vector2 {
      native.set('skew', value);
        return value;
    }


  public function getBorderWidth(margin: Int): Int {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_border_width', args);
  }
  public function getBorderWidthMin(): Int {
      var args = new ArrayList();
      return native.call('get_border_width_min', args);
  }
  public function getCornerRadius(corner: Int): Int {
      var args = new ArrayList();
      args.append(corner);
      return native.call('get_corner_radius', args);
  }
  public function getExpandMargin(margin: Int): Float {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_expand_margin', args);
  }
  public function setBorderWidth(margin: Int, width: Int): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(width);
      native.call('set_border_width', args);
  }
  public function setBorderWidthAll(width: Int): Void {
      var args = new ArrayList();
      args.append(width);
      native.call('set_border_width_all', args);
  }
  public function setCornerRadius(corner: Int, radius: Int): Void {
      var args = new ArrayList();
      args.append(corner);
      args.append(radius);
      native.call('set_corner_radius', args);
  }
  public function setCornerRadiusAll(radius: Int): Void {
      var args = new ArrayList();
      args.append(radius);
      native.call('set_corner_radius_all', args);
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
}
