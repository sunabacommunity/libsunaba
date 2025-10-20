package newhaven;

enum abstract LoadStatus(Int) from Int to Int {
	var ok = cast 0;
	var failed = cast 1;
	var alreadyLoaded = cast 2;
	var notLoaded = cast 3;
	var needsRestart = cast 4;
	public static var values = [ok, failed, alreadyLoaded, notLoaded, needsRestart];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ok": cast 0;
			case "failed": cast 1;
			case "alreadyLoaded": cast 2;
			case "notLoaded": cast 3;
			case "needsRestart": cast 4;
			case _: null;
		}
	}
}
