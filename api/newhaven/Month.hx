package newhaven;

enum abstract Month(Int) from Int to Int {
	var january = cast 1;
	var february = cast 2;
	var march = cast 3;
	var april = cast 4;
	var may = cast 5;
	var june = cast 6;
	var july = cast 7;
	var august = cast 8;
	var september = cast 9;
	var october = cast 10;
	var november = cast 11;
	var december = cast 12;
	public static var values = [january, february, march, april, may, june, july, august, september, october, november, december];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "january": cast 1;
			case "february": cast 2;
			case "march": cast 3;
			case "april": cast 4;
			case "may": cast 5;
			case "june": cast 6;
			case "july": cast 7;
			case "august": cast 8;
			case "september": cast 9;
			case "october": cast 10;
			case "november": cast 11;
			case "december": cast 12;
			case _: null;
		}
	}
}
