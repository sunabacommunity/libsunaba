package sunaba;

enum abstract UsedChannels(Int) from Int to Int {
	var l = cast 0;
	var la = cast 1;
	var r = cast 2;
	var rg = cast 3;
	var rgb = cast 4;
	var rgba = cast 5;
	public static var values = [l, la, r, rg, rgb, rgba];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "l": cast 0;
			case "la": cast 1;
			case "r": cast 2;
			case "rg": cast 3;
			case "rgb": cast 4;
			case "rgba": cast 5;
			case _: null;
		}
	}
}
