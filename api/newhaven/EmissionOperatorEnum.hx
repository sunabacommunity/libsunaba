package newhaven;

enum abstract EmissionOperatorEnum(Int) from Int to Int {
	var add = cast 0;
	var multiply = cast 1;
	public static var values = [add, multiply];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "add": cast 0;
			case "multiply": cast 1;
			case _: null;
		}
	}
}
