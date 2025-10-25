package sunaba;

enum abstract GenEditState(Int) from Int to Int {
	var disabled = cast 0;
	var instance = cast 1;
	var main = cast 2;
	var mainInherited = cast 3;
	public static var values = [disabled, instance, main, mainInherited];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "instance": cast 1;
			case "main": cast 2;
			case "mainInherited": cast 3;
			case _: null;
		}
	}
}
