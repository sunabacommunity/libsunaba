package newhaven;

enum abstract SubSurfaceScatteringQuality(Int) from Int to Int {
	var disabled = cast 0;
	var low = cast 1;
	var medium = cast 2;
	var high = cast 3;
	public static var values = [disabled, low, medium, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "low": cast 1;
			case "medium": cast 2;
			case "high": cast 3;
			case _: null;
		}
	}
}
