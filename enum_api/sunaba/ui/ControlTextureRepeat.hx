package sunaba.ui;

enum abstract ControlTextureRepeat(Int) from Int to Int {
	var parentNode = cast 0;
	var disabled = cast 1;
	var enabled = cast 2;
	var mirror = cast 3;
	var max = cast 4;
	public static var values = [parentNode, disabled, enabled, mirror, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "parentNode": cast 0;
			case "disabled": cast 1;
			case "enabled": cast 2;
			case "mirror": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
