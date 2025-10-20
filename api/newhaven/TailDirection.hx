package newhaven;

enum abstract TailDirection(Int) from Int to Int {
	var averageChildren = cast 0;
	var specificChild = cast 1;
	var end = cast 2;
	public static var values = [averageChildren, specificChild, end];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "averageChildren": cast 0;
			case "specificChild": cast 1;
			case "end": cast 2;
			case _: null;
		}
	}
}
