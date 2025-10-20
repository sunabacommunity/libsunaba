package newhaven;

enum abstract AccessibilityFlags(Int) from Int to Int {
	var hidden = cast 0;
	var multiselectable = cast 1;
	var required = cast 2;
	var visited = cast 3;
	var busy = cast 4;
	var modal = cast 5;
	var touchPassthrough = cast 6;
	var readonly = cast 7;
	var disabled = cast 8;
	var clipsChildren = cast 9;
	public static var values = [hidden, multiselectable, required, visited, busy, modal, touchPassthrough, readonly, disabled, clipsChildren];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "hidden": cast 0;
			case "multiselectable": cast 1;
			case "required": cast 2;
			case "visited": cast 3;
			case "busy": cast 4;
			case "modal": cast 5;
			case "touchPassthrough": cast 6;
			case "readonly": cast 7;
			case "disabled": cast 8;
			case "clipsChildren": cast 9;
			case _: null;
		}
	}
}
