package sunaba;

enum abstract Feature(Int) from Int to Int {
	var globalMenu = cast 0;
	var popupMenu = cast 1;
	var openCloseCallback = cast 2;
	var hoverCallback = cast 3;
	var keyCallback = cast 4;
	public static var values = [globalMenu, popupMenu, openCloseCallback, hoverCallback, keyCallback];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "globalMenu": cast 0;
			case "popupMenu": cast 1;
			case "openCloseCallback": cast 2;
			case "hoverCallback": cast 3;
			case "keyCallback": cast 4;
			case _: null;
		}
	}
}
