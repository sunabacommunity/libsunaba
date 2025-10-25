package sunaba;

enum abstract BGMode(Int) from Int to Int {
	var clearColor = cast 0;
	var color = cast 1;
	var sky = cast 2;
	var canvas = cast 3;
	var keep = cast 4;
	var cameraFeed = cast 5;
	var max = cast 6;
	public static var values = [clearColor, color, sky, canvas, keep, cameraFeed, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "clearColor": cast 0;
			case "color": cast 1;
			case "sky": cast 2;
			case "canvas": cast 3;
			case "keep": cast 4;
			case "cameraFeed": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
