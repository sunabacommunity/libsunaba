package newhaven;

enum abstract SubpixelPositioning(Int) from Int to Int {
	var disabled = cast 0;
	var auto = cast 1;
	var oneHalf = cast 2;
	var oneQuarter = cast 3;
	var oneQuarterMaxSize = cast 16;
	var oneHalfMaxSize = cast 20;
	public static var values = [disabled, auto, oneHalf, oneQuarter, oneQuarterMaxSize, oneHalfMaxSize];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "auto": cast 1;
			case "oneHalf": cast 2;
			case "oneQuarter": cast 3;
			case "oneQuarterMaxSize": cast 16;
			case "oneHalfMaxSize": cast 20;
			case _: null;
		}
	}
}
