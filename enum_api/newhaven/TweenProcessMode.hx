package newhaven;

enum abstract TweenProcessMode(Int) from Int to Int {
	var physics = cast 0;
	var idle = cast 1;
	public static var values = [physics, idle];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "physics": cast 0;
			case "idle": cast 1;
			case _: null;
		}
	}
}
