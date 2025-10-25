package sunaba;

enum abstract LineTextureMode(Int) from Int to Int {
	var none = cast 0;
	var tile = cast 1;
	var stretch = cast 2;
	public static var values = [none, tile, stretch];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "tile": cast 1;
			case "stretch": cast 2;
			case _: null;
		}
	}
}
