package newhaven;

enum abstract RenderModelTracker(Int) from Int to Int {
	var any = cast 0;
	var noneSet = cast 1;
	var leftHand = cast 2;
	var rightHand = cast 3;
	public static var values = [any, noneSet, leftHand, rightHand];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "any": cast 0;
			case "noneSet": cast 1;
			case "leftHand": cast 2;
			case "rightHand": cast 3;
			case _: null;
		}
	}
}
