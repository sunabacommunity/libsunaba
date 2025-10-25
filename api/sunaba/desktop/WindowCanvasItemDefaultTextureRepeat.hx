package sunaba.desktop;

enum abstract WindowCanvasItemDefaultTextureRepeat(Int) from Int to Int {
	var disabled = cast 0;
	var enabled = cast 1;
	var mirror = cast 2;
	var max = cast 3;
	public static var values = [disabled, enabled, mirror, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "enabled": cast 1;
			case "mirror": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
