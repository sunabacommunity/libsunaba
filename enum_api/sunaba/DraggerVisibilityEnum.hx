package sunaba;

enum abstract DraggerVisibilityEnum(Int) from Int to Int {
	var visible = cast 0;
	var hidden = cast 1;
	var hiddenCollapsed = cast 2;
	public static var values = [visible, hidden, hiddenCollapsed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "visible": cast 0;
			case "hidden": cast 1;
			case "hiddenCollapsed": cast 2;
			case _: null;
		}
	}
}
