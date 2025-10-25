package sunaba;

enum abstract CanvasItemProcessMode(Int) from Int to Int {
	var inherit = cast 0;
	var pausable = cast 1;
	var whenPaused = cast 2;
	var always = cast 3;
	var disabled = cast 4;
	public static var values = [inherit, pausable, whenPaused, always, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherit": cast 0;
			case "pausable": cast 1;
			case "whenPaused": cast 2;
			case "always": cast 3;
			case "disabled": cast 4;
			case _: null;
		}
	}
}
