package newhaven;

enum abstract SelectionMode(Int) from Int to Int {
	var none = cast 0;
	var shift = cast 1;
	var pointer = cast 2;
	var word = cast 3;
	var line = cast 4;
	public static var values = [none, shift, pointer, word, line];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "shift": cast 1;
			case "pointer": cast 2;
			case "word": cast 3;
			case "line": cast 4;
			case _: null;
		}
	}
}
