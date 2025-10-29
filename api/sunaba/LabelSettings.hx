package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Color;
import sunaba.core.Vector2;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class LabelSettings extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('LabelSettings');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['LabelSettings', native];
        scriptLoader.call('loadScript', args);
    }

    public var font(get, set): Font;
    function get_font(): Font {
        var ref: NativeReference = native.get('font');
        return new Font(ref);
    }
    function set_font(value: Font): Font {
      native.set('font', value.native);
        return value;
    }
    public var fontColor(get, set): Color;
    function get_fontColor(): Color {
        return native.get('font_color');
    }
    function set_fontColor(value: Color): Color {
      native.set('font_color', value);
        return value;
    }
    public var fontSize(get, set): Int;
    function get_fontSize(): Int {
        return native.get('font_size');
    }
    function set_fontSize(value: Int): Int {
      native.set('font_size', value);
        return value;
    }
    public var lineSpacing(get, set): Float;
    function get_lineSpacing(): Float {
        return native.get('line_spacing');
    }
    function set_lineSpacing(value: Float): Float {
      native.set('line_spacing', value);
        return value;
    }
    public var outlineColor(get, set): Color;
    function get_outlineColor(): Color {
        return native.get('outline_color');
    }
    function set_outlineColor(value: Color): Color {
      native.set('outline_color', value);
        return value;
    }
    public var outlineSize(get, set): Int;
    function get_outlineSize(): Int {
        return native.get('outline_size');
    }
    function set_outlineSize(value: Int): Int {
      native.set('outline_size', value);
        return value;
    }
    public var paragraphSpacing(get, set): Float;
    function get_paragraphSpacing(): Float {
        return native.get('paragraph_spacing');
    }
    function set_paragraphSpacing(value: Float): Float {
      native.set('paragraph_spacing', value);
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
    public var stackedOutlineCount(get, set): Int;
    function get_stackedOutlineCount(): Int {
        return native.get('stacked_outline_count');
    }
    function set_stackedOutlineCount(value: Int): Int {
      native.set('stacked_outline_count', value);
        return value;
    }
    public var stackedShadowCount(get, set): Int;
    function get_stackedShadowCount(): Int {
        return native.get('stacked_shadow_count');
    }
    function set_stackedShadowCount(value: Int): Int {
      native.set('stacked_shadow_count', value);
        return value;
    }


  public function addStackedOutline(?index: Int): Void {
      var args = new ArrayList();
      if (index != null) {
          args.append(index);
      }
      native.call('add_stacked_outline', args);
  }
  public function addStackedShadow(?index: Int): Void {
      var args = new ArrayList();
      if (index != null) {
          args.append(index);
      }
      native.call('add_stacked_shadow', args);
  }
  public function getStackedOutlineColor(index: Int): Color {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stacked_outline_color', args);
  }
  public function getStackedOutlineSize(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stacked_outline_size', args);
  }
  public function getStackedShadowColor(index: Int): Color {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stacked_shadow_color', args);
  }
  public function getStackedShadowOffset(index: Int): Vector2 {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stacked_shadow_offset', args);
  }
  public function getStackedShadowOutlineSize(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stacked_shadow_outline_size', args);
  }
  public function moveStackedOutline(fromIndex: Int, toPosition: Int): Void {
      var args = new ArrayList();
      args.append(fromIndex);
      args.append(toPosition);
      native.call('move_stacked_outline', args);
  }
  public function moveStackedShadow(fromIndex: Int, toPosition: Int): Void {
      var args = new ArrayList();
      args.append(fromIndex);
      args.append(toPosition);
      native.call('move_stacked_shadow', args);
  }
  public function removeStackedOutline(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('remove_stacked_outline', args);
  }
  public function removeStackedShadow(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('remove_stacked_shadow', args);
  }
  public function setStackedOutlineColor(index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(color);
      native.call('set_stacked_outline_color', args);
  }
  public function setStackedOutlineSize(index: Int, size: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(size);
      native.call('set_stacked_outline_size', args);
  }
  public function setStackedShadowColor(index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(color);
      native.call('set_stacked_shadow_color', args);
  }
  public function setStackedShadowOffset(index: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(offset);
      native.call('set_stacked_shadow_offset', args);
  }
  public function setStackedShadowOutlineSize(index: Int, size: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(size);
      native.call('set_stacked_shadow_outline_size', args);
  }
}
