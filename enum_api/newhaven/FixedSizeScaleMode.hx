package newhaven;

enum abstract FixedSizeScaleMode(Int) from Int to Int {
	var disable = cast 0;
	var integerOnly = cast 1;
	var enabled = cast 2;
	public static var values = [disable, integerOnly, enabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disable": cast 0;
			case "integerOnly": cast 1;
			case "enabled": cast 2;
			case _: null;
		}
	}
}
