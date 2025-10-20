package newhaven.ui;

enum abstract NinePatchRectMouseFilter(Int) from Int to Int {
	var stop = cast 0;
	var pass = cast 1;
	var ignore = cast 2;
	public static var values = [stop, pass, ignore];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stop": cast 0;
			case "pass": cast 1;
			case "ignore": cast 2;
			case _: null;
		}
	}
}
