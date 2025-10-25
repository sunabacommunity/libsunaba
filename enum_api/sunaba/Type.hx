package sunaba;

enum abstract Type(Int) from Int to Int {
	var vertex = cast 0;
	var fragment = cast 1;
	var light = cast 2;
	var start = cast 3;
	var process = cast 4;
	var collide = cast 5;
	var startCustom = cast 6;
	var processCustom = cast 7;
	var sky = cast 8;
	var fog = cast 9;
	var max = cast 10;
	public static var values = [vertex, fragment, light, start, process, collide, startCustom, processCustom, sky, fog, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vertex": cast 0;
			case "fragment": cast 1;
			case "light": cast 2;
			case "start": cast 3;
			case "process": cast 4;
			case "collide": cast 5;
			case "startCustom": cast 6;
			case "processCustom": cast 7;
			case "sky": cast 8;
			case "fog": cast 9;
			case "max": cast 10;
			case _: null;
		}
	}
}
