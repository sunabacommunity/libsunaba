package newhaven;

enum abstract AutowrapMode(Int) from Int to Int {
	var off = cast 0;
	var arbitrary = cast 1;
	var word = cast 2;
	var wordSmart = cast 3;
	public static var values = [off, arbitrary, word, wordSmart];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "off": cast 0;
			case "arbitrary": cast 1;
			case "word": cast 2;
			case "wordSmart": cast 3;
			case _: null;
		}
	}
}
