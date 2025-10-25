package sunaba;

enum abstract RenderInfo(Int) from Int to Int {
	var objectsInFrame = cast 0;
	var primitivesInFrame = cast 1;
	var drawCallsInFrame = cast 2;
	var max = cast 3;
	public static var values = [objectsInFrame, primitivesInFrame, drawCallsInFrame, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "objectsInFrame": cast 0;
			case "primitivesInFrame": cast 1;
			case "drawCallsInFrame": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
