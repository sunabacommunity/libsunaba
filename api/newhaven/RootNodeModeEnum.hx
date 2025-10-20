package newhaven;

enum abstract RootNodeModeEnum(Int) from Int to Int {
	var singleRoot = cast 0;
	var keepRoot = cast 1;
	var multiRoot = cast 2;
	public static var values = [singleRoot, keepRoot, multiRoot];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "singleRoot": cast 0;
			case "keepRoot": cast 1;
			case "multiRoot": cast 2;
			case _: null;
		}
	}
}
