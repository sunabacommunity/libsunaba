package newhaven;

enum abstract DebugVisibilityMode(Int) from Int to Int {
	var _default = cast 0;
	var forceShow = cast 1;
	var forceHide = cast 2;
	public static var values = [_default, forceShow, forceHide];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "forceShow": cast 1;
			case "forceHide": cast 2;
			case _: null;
		}
	}
}
