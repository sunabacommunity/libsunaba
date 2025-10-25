package sunaba;

enum abstract Weekday(Int) from Int to Int {
	var sunday = cast 0;
	var monday = cast 1;
	var tuesday = cast 2;
	var wednesday = cast 3;
	var thursday = cast 4;
	var friday = cast 5;
	var saturday = cast 6;
	public static var values = [sunday, monday, tuesday, wednesday, thursday, friday, saturday];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sunday": cast 0;
			case "monday": cast 1;
			case "tuesday": cast 2;
			case "wednesday": cast 3;
			case "thursday": cast 4;
			case "friday": cast 5;
			case "saturday": cast 6;
			case _: null;
		}
	}
}
