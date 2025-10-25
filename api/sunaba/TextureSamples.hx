package sunaba;

enum abstract TextureSamples(Int) from Int to Int {
	var samples1 = cast 0;
	var samples2 = cast 1;
	var samples4 = cast 2;
	var samples8 = cast 3;
	var samples16 = cast 4;
	var samples32 = cast 5;
	var samples64 = cast 6;
	var max = cast 7;
	public static var values = [samples1, samples2, samples4, samples8, samples16, samples32, samples64, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "samples1": cast 0;
			case "samples2": cast 1;
			case "samples4": cast 2;
			case "samples8": cast 3;
			case "samples16": cast 4;
			case "samples32": cast 5;
			case "samples64": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
