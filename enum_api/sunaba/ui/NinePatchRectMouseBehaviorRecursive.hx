package sunaba.ui;

enum abstract NinePatchRectMouseBehaviorRecursive(Int) from Int to Int {
	var inherited = cast 0;
	var disabled = cast 1;
	var enabled = cast 2;
	public static var values = [inherited, disabled, enabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherited": cast 0;
			case "disabled": cast 1;
			case "enabled": cast 2;
			case _: null;
		}
	}
}
