package sunaba;

enum abstract ConditionEnum(Int) from Int to Int {
	var all = cast 0;
	var any = cast 1;
	var max = cast 2;
	public static var values = [all, any, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "all": cast 0;
			case "any": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
