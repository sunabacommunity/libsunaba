package sunaba;

enum abstract DuplicateFlags(Int) from Int to Int {
	var signals = cast 1;
	var groups = cast 2;
	var scripts = cast 4;
	var useInstantiation = cast 8;
	public static var values = [signals, groups, scripts, useInstantiation];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "signals": cast 1;
			case "groups": cast 2;
			case "scripts": cast 4;
			case "useInstantiation": cast 8;
			case _: null;
		}
	}
}
