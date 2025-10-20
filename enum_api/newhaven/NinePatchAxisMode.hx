package newhaven;

enum abstract NinePatchAxisMode(Int) from Int to Int {
	var stretch = cast 0;
	var tile = cast 1;
	var tileFit = cast 2;
	public static var values = [stretch, tile, tileFit];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stretch": cast 0;
			case "tile": cast 1;
			case "tileFit": cast 2;
			case _: null;
		}
	}
}
