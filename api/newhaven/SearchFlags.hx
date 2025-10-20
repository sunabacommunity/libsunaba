package newhaven;

enum abstract SearchFlags(Int) from Int to Int {
	var matchCase = cast 1;
	var wholeWords = cast 2;
	var backwards = cast 4;
	public static var values = [matchCase, wholeWords, backwards];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "matchCase": cast 1;
			case "wholeWords": cast 2;
			case "backwards": cast 4;
			case _: null;
		}
	}
}
