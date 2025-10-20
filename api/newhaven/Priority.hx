package newhaven;

enum abstract Priority(Int) from Int to Int {
	var low = cast 0;
	var normal = cast 1;
	var high = cast 2;
	public static var values = [low, normal, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "low": cast 0;
			case "normal": cast 1;
			case "high": cast 2;
			case _: null;
		}
	}
}
