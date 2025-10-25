package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Dictionary;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class FontVariation extends Font {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('FontVariation');
        }
        native = _native;
    }

    public var baseFont(get, set): Font;
    function get_baseFont(): Font {
        var ref: NativeReference = native.get('base_font');
        return new Font(ref);
    }
    function set_baseFont(value: Font): Font {
      native.set('base_font', value.native);
        return value;
    }
    public var baselineOffset(get, set): Float;
    function get_baselineOffset(): Float {
        return native.get('baseline_offset');
    }
    function set_baselineOffset(value: Float): Float {
      native.set('baseline_offset', value);
        return value;
    }
    public var opentypeFeatures(get, set): Dictionary;
    function get_opentypeFeatures(): Dictionary {
        return native.get('opentype_features');
    }
    function set_opentypeFeatures(value: Dictionary): Dictionary {
      native.set('opentype_features', value);
        return value;
    }
    public var spacingBottom(get, set): Int;
    function get_spacingBottom(): Int {
        return native.get('spacing_bottom');
    }
    function set_spacingBottom(value: Int): Int {
      native.set('spacing_bottom', value);
        return value;
    }
    public var spacingGlyph(get, set): Int;
    function get_spacingGlyph(): Int {
        return native.get('spacing_glyph');
    }
    function set_spacingGlyph(value: Int): Int {
      native.set('spacing_glyph', value);
        return value;
    }
    public var spacingSpace(get, set): Int;
    function get_spacingSpace(): Int {
        return native.get('spacing_space');
    }
    function set_spacingSpace(value: Int): Int {
      native.set('spacing_space', value);
        return value;
    }
    public var spacingTop(get, set): Int;
    function get_spacingTop(): Int {
        return native.get('spacing_top');
    }
    function set_spacingTop(value: Int): Int {
      native.set('spacing_top', value);
        return value;
    }
    public var variationEmbolden(get, set): Float;
    function get_variationEmbolden(): Float {
        return native.get('variation_embolden');
    }
    function set_variationEmbolden(value: Float): Float {
      native.set('variation_embolden', value);
        return value;
    }
    public var variationFaceIndex(get, set): Int;
    function get_variationFaceIndex(): Int {
        return native.get('variation_face_index');
    }
    function set_variationFaceIndex(value: Int): Int {
      native.set('variation_face_index', value);
        return value;
    }
    public var variationOpentype(get, set): Dictionary;
    function get_variationOpentype(): Dictionary {
        return native.get('variation_opentype');
    }
    function set_variationOpentype(value: Dictionary): Dictionary {
      native.set('variation_opentype', value);
        return value;
    }


  public function setSpacing(spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(spacing);
      args.append(value);
      native.call('set_spacing', args);
  }
}
