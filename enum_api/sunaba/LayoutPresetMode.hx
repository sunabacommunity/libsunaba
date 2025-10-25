package sunaba;

enum abstract LayoutPresetMode(Int) from Int to Int {
	var minsize = cast 0;
	var keepWidth = cast 1;
	var keepHeight = cast 2;
	var keepSize = cast 3;
	public static var values = [minsize, keepWidth, keepHeight, keepSize];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "minsize": cast 0;
			case "keepWidth": cast 1;
			case "keepHeight": cast 2;
			case "keepSize": cast 3;
			case _: null;
		}
	}
}
