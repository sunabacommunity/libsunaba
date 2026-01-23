package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class LinkButton extends BaseButton {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('LinkButton');
        }
        this.native = _native;
    }

    public var ellipsisChar(get, set): String;
    function get_ellipsisChar(): String {
        return native.get('ellipsis_char');
    }
    function set_ellipsisChar(value: String): String {
      native.set('ellipsis_char', value);
        return value;
    }
    public var language(get, set): String;
    function get_language(): String {
        return native.get('language');
    }
    function set_language(value: String): String {
      native.set('language', value);
        return value;
    }
    public var structuredTextBidiOverride(get, set): Int;
    function get_structuredTextBidiOverride(): Int {
        return native.get('structured_text_bidi_override');
    }
    function set_structuredTextBidiOverride(value: Int): Int {
      native.set('structured_text_bidi_override', value);
        return value;
    }
    public var structuredTextBidiOverrideOptions(get, set): ArrayList;
    function get_structuredTextBidiOverrideOptions(): ArrayList {
        return native.get('structured_text_bidi_override_options');
    }
    function set_structuredTextBidiOverrideOptions(value: ArrayList): ArrayList {
      native.set('structured_text_bidi_override_options', value);
        return value;
    }
    public var text(get, set): String;
    function get_text(): String {
        return native.get('text');
    }
    function set_text(value: String): String {
      native.set('text', value);
        return value;
    }
    public var textDirection(get, set): Int;
    function get_textDirection(): Int {
        return native.get('text_direction');
    }
    function set_textDirection(value: Int): Int {
      native.set('text_direction', value);
        return value;
    }
    public var textOverrunBehavior(get, set): Int;
    function get_textOverrunBehavior(): Int {
        return native.get('text_overrun_behavior');
    }
    function set_textOverrunBehavior(value: Int): Int {
      native.set('text_overrun_behavior', value);
        return value;
    }
    public var underline(get, set): Int;
    function get_underline(): Int {
        return native.get('underline');
    }
    function set_underline(value: Int): Int {
      native.set('underline', value);
        return value;
    }
    public var uri(get, set): String;
    function get_uri(): String {
        return native.get('uri');
    }
    function set_uri(value: String): String {
      native.set('uri', value);
        return value;
    }


}
