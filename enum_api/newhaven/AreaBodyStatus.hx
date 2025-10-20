package newhaven;

enum abstract AreaBodyStatus(Int) from Int to Int {
	var added = cast 0;
	var removed = cast 1;
	public static var values = [added, removed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "added": cast 0;
			case "removed": cast 1;
			case _: null;
		}
	}
}
