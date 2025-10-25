package sunaba.ui;

enum abstract CodeEditWrapMode(Int) from Int to Int {
	var none = cast 0;
	var boundary = cast 1;
	public static var values = [none, boundary];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "boundary": cast 1;
			case _: null;
		}
	}
}
