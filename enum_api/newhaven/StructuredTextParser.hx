package newhaven;

enum abstract StructuredTextParser(Int) from Int to Int {
	var _default = cast 0;
	var uri = cast 1;
	var file = cast 2;
	var email = cast 3;
	var list = cast 4;
	var gdscript = cast 5;
	var custom = cast 6;
	public static var values = [_default, uri, file, email, list, gdscript, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "uri": cast 1;
			case "file": cast 2;
			case "email": cast 3;
			case "list": cast 4;
			case "gdscript": cast 5;
			case "custom": cast 6;
			case _: null;
		}
	}
}
