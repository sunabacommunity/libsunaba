package newhaven;

enum abstract StretchModeEnum(Int) from Int to Int {
	var scale = cast 0;
	var tile = cast 1;
	var keep = cast 2;
	var keepCentered = cast 3;
	var keepAspect = cast 4;
	var keepAspectCentered = cast 5;
	var keepAspectCovered = cast 6;
	public static var values = [scale, tile, keep, keepCentered, keepAspect, keepAspectCentered, keepAspectCovered];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scale": cast 0;
			case "tile": cast 1;
			case "keep": cast 2;
			case "keepCentered": cast 3;
			case "keepAspect": cast 4;
			case "keepAspectCentered": cast 5;
			case "keepAspectCovered": cast 6;
			case _: null;
		}
	}
}
