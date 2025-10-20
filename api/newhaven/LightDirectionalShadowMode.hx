package newhaven;

enum abstract LightDirectionalShadowMode(Int) from Int to Int {
	var orthogonal = cast 0;
	var parallel2Splits = cast 1;
	var parallel4Splits = cast 2;
	public static var values = [orthogonal, parallel2Splits, parallel4Splits];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "orthogonal": cast 0;
			case "parallel2Splits": cast 1;
			case "parallel4Splits": cast 2;
			case _: null;
		}
	}
}
