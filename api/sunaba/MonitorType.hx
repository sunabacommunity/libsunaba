package sunaba;

enum abstract MonitorType(Int) from Int to Int {
	var quantity = cast 0;
	var memory = cast 1;
	var time = cast 2;
	var percentage = cast 3;
	public static var values = [quantity, memory, time, percentage];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "quantity": cast 0;
			case "memory": cast 1;
			case "time": cast 2;
			case "percentage": cast 3;
			case _: null;
		}
	}
}
