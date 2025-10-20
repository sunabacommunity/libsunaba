package newhaven;

enum abstract IgdStatusEnum(Int) from Int to Int {
	var ok = cast 0;
	var httpError = cast 1;
	var httpEmpty = cast 2;
	var noUrls = cast 3;
	var noIgd = cast 4;
	var disconnected = cast 5;
	var unknownDevice = cast 6;
	var invalidControl = cast 7;
	var mallocError = cast 8;
	var unknownError = cast 9;
	public static var values = [ok, httpError, httpEmpty, noUrls, noIgd, disconnected, unknownDevice, invalidControl, mallocError, unknownError];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ok": cast 0;
			case "httpError": cast 1;
			case "httpEmpty": cast 2;
			case "noUrls": cast 3;
			case "noIgd": cast 4;
			case "disconnected": cast 5;
			case "unknownDevice": cast 6;
			case "invalidControl": cast 7;
			case "mallocError": cast 8;
			case "unknownError": cast 9;
			case _: null;
		}
	}
}
