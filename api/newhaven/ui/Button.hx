package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Texture2D;
import newhaven.core.Signal;

class Button extends BaseButton {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Button');
        }
        native = _native;
    }

    public var alignment(get, set): Int;
    function get_alignment(): Int {
        return native.get('alignment');
    }
    function set_alignment(value: Int): Int {
      native.set('alignment', value);
        return value;
    }
    public var autowrapMode(get, set): Int;
    function get_autowrapMode(): Int {
        return native.get('autowrap_mode');
    }
    function set_autowrapMode(value: Int): Int {
      native.set('autowrap_mode', value);
        return value;
    }
    public var autowrapTrimFlags(get, set): Int;
    function get_autowrapTrimFlags(): Int {
        return native.get('autowrap_trim_flags');
    }
    function set_autowrapTrimFlags(value: Int): Int {
      native.set('autowrap_trim_flags', value);
        return value;
    }
    public var clipText(get, set): Bool;
    function get_clipText(): Bool {
        return native.get('clip_text');
    }
    function set_clipText(value: Bool): Bool {
      native.set('clip_text', value);
        return value;
    }
    public var expandIcon(get, set): Bool;
    function get_expandIcon(): Bool {
        return native.get('expand_icon');
    }
    function set_expandIcon(value: Bool): Bool {
      native.set('expand_icon', value);
        return value;
    }
    public var flat(get, set): Bool;
    function get_flat(): Bool {
        return native.get('flat');
    }
    function set_flat(value: Bool): Bool {
      native.set('flat', value);
        return value;
    }
    public var icon(get, set): Texture2D;
    function get_icon(): Texture2D {
        var ref: NativeReference = native.get('icon');
        return new Texture2D(ref);
    }
    function set_icon(value: Texture2D): Texture2D {
      native.set('icon', value.native);
        return value;
    }
    public var iconAlignment(get, set): Int;
    function get_iconAlignment(): Int {
        return native.get('icon_alignment');
    }
    function set_iconAlignment(value: Int): Int {
      native.set('icon_alignment', value);
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
    public var verticalIconAlignment(get, set): Int;
    function get_verticalIconAlignment(): Int {
        return native.get('vertical_icon_alignment');
    }
    function set_verticalIconAlignment(value: Int): Int {
      native.set('vertical_icon_alignment', value);
        return value;
    }


}
