package sunaba;

enum abstract DepthDrawModeEnum(Int) from Int to Int {
	var opaqueOnly = cast 0;
	var always = cast 1;
	var disabled = cast 2;
	public static var values = [opaqueOnly, always, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "opaqueOnly": cast 0;
			case "always": cast 1;
			case "disabled": cast 2;
			case _: null;
		}
	}
}
