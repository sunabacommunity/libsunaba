package newhaven;

enum abstract NodeType(Int) from Int to Int {
	var none = cast 0;
	var element = cast 1;
	var elementEnd = cast 2;
	var text = cast 3;
	var comment = cast 4;
	var cdata = cast 5;
	var unknown = cast 6;
	public static var values = [none, element, elementEnd, text, comment, cdata, unknown];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "element": cast 1;
			case "elementEnd": cast 2;
			case "text": cast 3;
			case "comment": cast 4;
			case "cdata": cast 5;
			case "unknown": cast 6;
			case _: null;
		}
	}
}
