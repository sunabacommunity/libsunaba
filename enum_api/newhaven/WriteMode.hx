package newhaven;

enum abstract WriteMode(Int) from Int to Int {
	var text = cast 0;
	var binary = cast 1;
	public static var values = [text, binary];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "text": cast 0;
			case "binary": cast 1;
			case _: null;
		}
	}
}
