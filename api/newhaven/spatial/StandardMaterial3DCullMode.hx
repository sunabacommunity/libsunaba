package newhaven.spatial;

enum abstract StandardMaterial3DCullMode(Int) from Int to Int {
	var back = cast 0;
	var front = cast 1;
	var disabled = cast 2;
	public static var values = [back, front, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "back": cast 0;
			case "front": cast 1;
			case "disabled": cast 2;
			case _: null;
		}
	}
}
