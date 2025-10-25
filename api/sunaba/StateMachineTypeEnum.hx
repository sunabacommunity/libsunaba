package sunaba;

enum abstract StateMachineTypeEnum(Int) from Int to Int {
	var root = cast 0;
	var nested = cast 1;
	var grouped = cast 2;
	public static var values = [root, nested, grouped];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "root": cast 0;
			case "nested": cast 1;
			case "grouped": cast 2;
			case _: null;
		}
	}
}
