package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.Texture2D;
import sunaba.core.Color;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class TextureProgressBar extends Range {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('TextureProgressBar');
        }
        native = _native;
    }

    public var fillMode(get, set): Int;
    function get_fillMode(): Int {
        return native.get('fill_mode');
    }
    function set_fillMode(value: Int): Int {
      native.set('fill_mode', value);
        return value;
    }
    public var ninePatchStretch(get, set): Bool;
    function get_ninePatchStretch(): Bool {
        return native.get('nine_patch_stretch');
    }
    function set_ninePatchStretch(value: Bool): Bool {
      native.set('nine_patch_stretch', value);
        return value;
    }
    public var radialCenterOffset(get, set): Vector2;
    function get_radialCenterOffset(): Vector2 {
        return native.get('radial_center_offset');
    }
    function set_radialCenterOffset(value: Vector2): Vector2 {
      native.set('radial_center_offset', value);
        return value;
    }
    public var radialFillDegrees(get, set): Float;
    function get_radialFillDegrees(): Float {
        return native.get('radial_fill_degrees');
    }
    function set_radialFillDegrees(value: Float): Float {
      native.set('radial_fill_degrees', value);
        return value;
    }
    public var radialInitialAngle(get, set): Float;
    function get_radialInitialAngle(): Float {
        return native.get('radial_initial_angle');
    }
    function set_radialInitialAngle(value: Float): Float {
      native.set('radial_initial_angle', value);
        return value;
    }
    public var stretchMarginBottom(get, set): Int;
    function get_stretchMarginBottom(): Int {
        return native.get('stretch_margin_bottom');
    }
    function set_stretchMarginBottom(value: Int): Int {
      native.set('stretch_margin_bottom', value);
        return value;
    }
    public var stretchMarginLeft(get, set): Int;
    function get_stretchMarginLeft(): Int {
        return native.get('stretch_margin_left');
    }
    function set_stretchMarginLeft(value: Int): Int {
      native.set('stretch_margin_left', value);
        return value;
    }
    public var stretchMarginRight(get, set): Int;
    function get_stretchMarginRight(): Int {
        return native.get('stretch_margin_right');
    }
    function set_stretchMarginRight(value: Int): Int {
      native.set('stretch_margin_right', value);
        return value;
    }
    public var stretchMarginTop(get, set): Int;
    function get_stretchMarginTop(): Int {
        return native.get('stretch_margin_top');
    }
    function set_stretchMarginTop(value: Int): Int {
      native.set('stretch_margin_top', value);
        return value;
    }
    public var textureOver(get, set): Texture2D;
    function get_textureOver(): Texture2D {
        var ref: NativeReference = native.get('texture_over');
        return new Texture2D(ref);
    }
    function set_textureOver(value: Texture2D): Texture2D {
      native.set('texture_over', value.native);
        return value;
    }
    public var textureProgress(get, set): Texture2D;
    function get_textureProgress(): Texture2D {
        var ref: NativeReference = native.get('texture_progress');
        return new Texture2D(ref);
    }
    function set_textureProgress(value: Texture2D): Texture2D {
      native.set('texture_progress', value.native);
        return value;
    }
    public var textureProgressOffset(get, set): Vector2;
    function get_textureProgressOffset(): Vector2 {
        return native.get('texture_progress_offset');
    }
    function set_textureProgressOffset(value: Vector2): Vector2 {
      native.set('texture_progress_offset', value);
        return value;
    }
    public var textureUnder(get, set): Texture2D;
    function get_textureUnder(): Texture2D {
        var ref: NativeReference = native.get('texture_under');
        return new Texture2D(ref);
    }
    function set_textureUnder(value: Texture2D): Texture2D {
      native.set('texture_under', value.native);
        return value;
    }
    public var tintOver(get, set): Color;
    function get_tintOver(): Color {
        return native.get('tint_over');
    }
    function set_tintOver(value: Color): Color {
      native.set('tint_over', value);
        return value;
    }
    public var tintProgress(get, set): Color;
    function get_tintProgress(): Color {
        return native.get('tint_progress');
    }
    function set_tintProgress(value: Color): Color {
      native.set('tint_progress', value);
        return value;
    }
    public var tintUnder(get, set): Color;
    function get_tintUnder(): Color {
        return native.get('tint_under');
    }
    function set_tintUnder(value: Color): Color {
      native.set('tint_under', value);
        return value;
    }


  public function getStretchMargin(margin: Int): Int {
      var args = new ArrayList();
      args.append(margin);
      return native.call('get_stretch_margin', args);
  }
  public function setStretchMargin(margin: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(margin);
      args.append(value);
      native.call('set_stretch_margin', args);
  }
}
