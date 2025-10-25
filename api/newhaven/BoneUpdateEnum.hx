package sunaba;

enum abstract BoneUpdateEnum(Int) from Int to Int {
	var full = cast 0;
	var rotationOnly = cast 1;
	var max = cast 2;
	public static var values = [full, rotationOnly, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "full": cast 0;
			case "rotationOnly": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
