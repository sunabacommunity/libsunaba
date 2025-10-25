package sunaba;

enum abstract ApiType(Int) from Int to Int {
	var core = cast 0;
	var editor = cast 1;
	var extension = cast 2;
	var editorExtension = cast 3;
	var none = cast 4;
	public static var values = [core, editor, extension, editorExtension, none];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "core": cast 0;
			case "editor": cast 1;
			case "extension": cast 2;
			case "editorExtension": cast 3;
			case "none": cast 4;
			case _: null;
		}
	}
}
