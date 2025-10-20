package newhaven;

enum abstract CanvasItemTextureRepeat(Int) from Int to Int {
	var _default = cast 0;
	var disabled = cast 1;
	var enabled = cast 2;
	var mirror = cast 3;
	var max = cast 4;
	public static var values = [_default, disabled, enabled, mirror, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "disabled": cast 1;
			case "enabled": cast 2;
			case "mirror": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
