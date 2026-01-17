package sunaba;

enum abstract ThreadType(Int) from Int to Int {
	var applicationMain = cast 0;
	var applicationWorker = cast 1;
	var rendererMain = cast 2;
	var rendererWorker = cast 3;
	public static var values = [applicationMain, applicationWorker, rendererMain, rendererWorker];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "applicationMain": cast 0;
			case "applicationWorker": cast 1;
			case "rendererMain": cast 2;
			case "rendererWorker": cast 3;
			case _: null;
		}
	}
}
