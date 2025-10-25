package sunaba;

enum abstract ArrayType(Int) from Int to Int {
	var vertex = cast 0;
	var normal = cast 1;
	var tangent = cast 2;
	var color = cast 3;
	var texUv = cast 4;
	var texUv2 = cast 5;
	var custom0 = cast 6;
	var custom1 = cast 7;
	var custom2 = cast 8;
	var custom3 = cast 9;
	var bones = cast 10;
	var weights = cast 11;
	var index = cast 12;
	var max = cast 13;
	public static var values = [vertex, normal, tangent, color, texUv, texUv2, custom0, custom1, custom2, custom3, bones, weights, index, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertex": cast 0;
			case "normal": cast 1;
			case "tangent": cast 2;
			case "color": cast 3;
			case "texUv": cast 4;
			case "texUv2": cast 5;
			case "custom0": cast 6;
			case "custom1": cast 7;
			case "custom2": cast 8;
			case "custom3": cast 9;
			case "bones": cast 10;
			case "weights": cast 11;
			case "index": cast 12;
			case "max": cast 13;
			case _: null;
		}
	}
}
