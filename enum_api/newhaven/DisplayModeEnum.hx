package newhaven;

enum abstract DisplayModeEnum(Int) from Int to Int {
	var thumbnails = cast 0;
	var list = cast 1;
	public static var values = [thumbnails, list];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "thumbnails": cast 0;
			case "list": cast 1;
			case _: null;
		}
	}
}
