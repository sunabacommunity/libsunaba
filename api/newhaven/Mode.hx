package newhaven;

enum abstract Mode(Int) from Int to Int {
	var spatial = cast 0;
	var canvasItem = cast 1;
	var particles = cast 2;
	var sky = cast 3;
	var fog = cast 4;
	public static var values = [spatial, canvasItem, particles, sky, fog];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "spatial": cast 0;
			case "canvasItem": cast 1;
			case "particles": cast 2;
			case "sky": cast 3;
			case "fog": cast 4;
			case _: null;
		}
	}
}
