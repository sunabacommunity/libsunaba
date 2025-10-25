package sunaba;

enum abstract ThreadLoadStatus(Int) from Int to Int {
	var invalidResource = cast 0;
	var inProgress = cast 1;
	var failed = cast 2;
	var loaded = cast 3;
	public static var values = [invalidResource, inProgress, failed, loaded];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "invalidResource": cast 0;
			case "inProgress": cast 1;
			case "failed": cast 2;
			case "loaded": cast 3;
			case _: null;
		}
	}
}
