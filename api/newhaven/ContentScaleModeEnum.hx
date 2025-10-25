package sunaba;

enum abstract ContentScaleModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var canvasItems = cast 1;
	var viewport = cast 2;
	public static var values = [disabled, canvasItems, viewport];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "canvasItems": cast 1;
			case "viewport": cast 2;
			case _: null;
		}
	}
}
