package newhaven.spatial;

enum abstract StandardMaterial3DDetailBlendMode(Int) from Int to Int {
	var mix = cast 0;
	var add = cast 1;
	var sub = cast 2;
	var mul = cast 3;
	var premultAlpha = cast 4;
	public static var values = [mix, add, sub, mul, premultAlpha];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "mix": cast 0;
			case "add": cast 1;
			case "sub": cast 2;
			case "mul": cast 3;
			case "premultAlpha": cast 4;
			case _: null;
		}
	}
}
