package newhaven.spatial.navigation;

enum abstract NavigationAgent3DProcessThreadGroup(Int) from Int to Int {
	var inherit = cast 0;
	var mainThread = cast 1;
	var subThread = cast 2;
	public static var values = [inherit, mainThread, subThread];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherit": cast 0;
			case "mainThread": cast 1;
			case "subThread": cast 2;
			case _: null;
		}
	}
}
