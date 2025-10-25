package sunaba;

enum abstract PlatformOnLeaveEnum(Int) from Int to Int {
	var addVelocity = cast 0;
	var addUpwardVelocity = cast 1;
	var doNothing = cast 2;
	public static var values = [addVelocity, addUpwardVelocity, doNothing];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "addVelocity": cast 0;
			case "addUpwardVelocity": cast 1;
			case "doNothing": cast 2;
			case _: null;
		}
	}
}
