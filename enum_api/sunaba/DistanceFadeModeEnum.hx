package sunaba;

enum abstract DistanceFadeModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var pixelAlpha = cast 1;
	var pixelDither = cast 2;
	var objectDither = cast 3;
	public static var values = [disabled, pixelAlpha, pixelDither, objectDither];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "pixelAlpha": cast 1;
			case "pixelDither": cast 2;
			case "objectDither": cast 3;
			case _: null;
		}
	}
}
