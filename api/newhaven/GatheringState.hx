package newhaven;

enum abstract GatheringState(Int) from Int to Int {
	var _new = cast 0;
	var gathering = cast 1;
	var complete = cast 2;
	public static var values = [_new, gathering, complete];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_new": cast 0;
			case "gathering": cast 1;
			case "complete": cast 2;
			case _: null;
		}
	}
}
