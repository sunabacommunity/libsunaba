package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.Font;
import sunaba.Texture2D;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class ThemeDBService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('ThemeDBService');
        }
        return _native;
    }

    public static var fallbackBaseScale(get, set): Float;
    static function get_fallbackBaseScale(): Float {
        return getNative().get('fallback_base_scale');
    }
    static function set_fallbackBaseScale(value: Float): Float {
      getNative().set('fallback_base_scale', value);
        return value;
    }
    public static var fallbackFont(get, set): Font;
    static function get_fallbackFont(): Font {
        var ref: NativeReference = getNative().get('fallback_font');
        return new Font(ref);
    }
    static function set_fallbackFont(value: Font): Font {
      getNative().set('fallback_font', value.native);
        return value;
    }
    public static var fallbackFontSize(get, set): Int;
    static function get_fallbackFontSize(): Int {
        return getNative().get('fallback_font_size');
    }
    static function set_fallbackFontSize(value: Int): Int {
      getNative().set('fallback_font_size', value);
        return value;
    }
    public static var fallbackIcon(get, set): Texture2D;
    static function get_fallbackIcon(): Texture2D {
        var ref: NativeReference = getNative().get('fallback_icon');
        return new Texture2D(ref);
    }
    static function set_fallbackIcon(value: Texture2D): Texture2D {
      getNative().set('fallback_icon', value.native);
        return value;
    }
    public static var fallbackStylebox(get, set): StyleBox;
    static function get_fallbackStylebox(): StyleBox {
        var ref: NativeReference = getNative().get('fallback_stylebox');
        return new StyleBox(ref);
    }
    static function set_fallbackStylebox(value: StyleBox): StyleBox {
      getNative().set('fallback_stylebox', value.native);
        return value;
    }

	private static var _fallbackChanged: Signal;
	public static var fallbackChanged(get, default): Signal;
	static function get_fallbackChanged(): Signal {
	    if (_fallbackChanged == null) {
	        _fallbackChanged = Signal.createFromObject(getNative(), 'fallback_changed');
	    }
	    return _fallbackChanged;
	}

  public function getDefaultTheme(): Theme {
      var args = new ArrayList();
      var ref: NativeReference = getNative().call('get_default_theme', args);
      return new Theme(ref);
  }
  public function getProjectTheme(): Theme {
      var args = new ArrayList();
      var ref: NativeReference = getNative().call('get_project_theme', args);
      return new Theme(ref);
  }
}
