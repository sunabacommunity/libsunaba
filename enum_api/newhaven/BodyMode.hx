package sunaba;

enum abstract BodyMode(Int) from Int to Int {
	var _static = cast 0;
	var kinematic = cast 1;
	var rigid = cast 2;
	var rigidLinear = cast 3;
	public static var values = [_static, kinematic, rigid, rigidLinear];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_static": cast 0;
			case "kinematic": cast 1;
			case "rigid": cast 2;
			case "rigidLinear": cast 3;
			case _: null;
		}
	}
}
