package sunaba.spatial;

enum abstract Label3DVisibilityRangeFadeMode(Int) from Int to Int {
	var disabled = cast 0;
	var self = cast 1;
	var dependencies = cast 2;
	public static var values = [disabled, self, dependencies];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "self": cast 1;
			case "dependencies": cast 2;
			case _: null;
		}
	}
}
