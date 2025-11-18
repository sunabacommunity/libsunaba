package sunaba;
import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.Color;
import sunaba.core.Vector2i;

class FontTexture2D extends Texture2D {
	public override function nativeInit(?_native: NativeReference) {
		if (_native == null) {
			_native = new NativeReference("res://Engine/FontTexture.gd", new ArrayList(), ScriptType.gdscript);
		}
		native = _native;
	}

	public var text(get, set): String;

	function get_text():String {
		return native.get("text");
	}
	function set_text(value:String):String {
		native.set("text", value);
		return value;
	}

	public var font(get, set): Font;
	function get_font():Font {
		return new Font(native.get("font"));
	}
	function set_font(value:Font):Font {
		native.set("font", value.native);
		return value;
	}

	public var fontColor(get, set): Color;
	function get_fontColor():Color {
		return native.get("font_color");
	}
	function set_fontColor(value:Color):Color {
		native.set("font_color", value);
		return value;
	}

	public var fontSize(get, set): Int;
	function get_fontSize():Int {
		return native.get("font_size");
	}
	function set_fontSize(value:Int):Int {
		native.set("font_size", value);
		return value;
	}

	public var padding(get, set): Vector2i;
	function get_padding():Vector2i {
		return native.get("padding");
	}
	function set_padding(value:Vector2i):Vector2i {
		native.set("padding", value);
		return value;
	}

	public var justificationFlags(get, set): Int;
	function get_justificationFlags():Int {
		return native.get("justification_flags");
	}
	function set_justificationFlags(value:Int):Int {
		native.set("justification_flags", value);
		return value;
	}
}
