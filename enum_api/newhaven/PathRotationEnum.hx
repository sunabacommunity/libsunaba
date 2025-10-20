package newhaven;

enum abstract PathRotationEnum(Int) from Int to Int {
	var polygon = cast 0;
	var path = cast 1;
	var pathFollow = cast 2;
	public static var values = [polygon, path, pathFollow];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "polygon": cast 0;
			case "path": cast 1;
			case "pathFollow": cast 2;
			case _: null;
		}
	}
}
