package newhaven;

enum abstract BakeQuality(Int) from Int to Int {
	var low = cast 0;
	var medium = cast 1;
	var high = cast 2;
	var ultra = cast 3;
	public static var values = [low, medium, high, ultra];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "low": cast 0;
			case "medium": cast 1;
			case "high": cast 2;
			case "ultra": cast 3;
			case _: null;
		}
	}
}
