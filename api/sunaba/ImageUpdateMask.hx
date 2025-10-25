package sunaba;

enum abstract ImageUpdateMask(Int) from Int to Int {
	var texture = cast 1;
	var size = cast 2;
	var color = cast 4;
	var alignment = cast 8;
	var region = cast 16;
	var pad = cast 32;
	var tooltip = cast 64;
	var widthInPercent = cast 128;
	public static var values = [texture, size, color, alignment, region, pad, tooltip, widthInPercent];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "texture": cast 1;
			case "size": cast 2;
			case "color": cast 4;
			case "alignment": cast 8;
			case "region": cast 16;
			case "pad": cast 32;
			case "tooltip": cast 64;
			case "widthInPercent": cast 128;
			case _: null;
		}
	}
}
