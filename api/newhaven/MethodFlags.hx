package newhaven;

enum abstract MethodFlags(Int) from Int to Int {
	var normal = cast 1;
	var editor = cast 2;
	var const = cast 4;
	var virtual = cast 8;
	var vararg = cast 16;
	var _static = cast 32;
	var objectCore = cast 64;
	var virtualRequired = cast 128;
	public static var values = [normal, editor, const, virtual, vararg, _static, objectCore, virtualRequired];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normal": cast 1;
			case "editor": cast 2;
			case "const": cast 4;
			case "virtual": cast 8;
			case "vararg": cast 16;
			case "_static": cast 32;
			case "objectCore": cast 64;
			case "virtualRequired": cast 128;
			case _: null;
		}
	}
}
