package sunaba;

enum abstract PinJointFlag(Int) from Int to Int {
	var angularLimitEnabled = cast 0;
	var motorEnabled = cast 1;
	public static var values = [angularLimitEnabled, motorEnabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "angularLimitEnabled": cast 0;
			case "motorEnabled": cast 1;
			case _: null;
		}
	}
}
