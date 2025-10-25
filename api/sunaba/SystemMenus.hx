package sunaba;

enum abstract SystemMenus(Int) from Int to Int {
	var invalidMenuId = cast 0;
	var mainMenuId = cast 1;
	var applicationMenuId = cast 2;
	var windowMenuId = cast 3;
	var helpMenuId = cast 4;
	var dockMenuId = cast 5;
	public static var values = [invalidMenuId, mainMenuId, applicationMenuId, windowMenuId, helpMenuId, dockMenuId];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "invalidMenuId": cast 0;
			case "mainMenuId": cast 1;
			case "applicationMenuId": cast 2;
			case "windowMenuId": cast 3;
			case "helpMenuId": cast 4;
			case "dockMenuId": cast 5;
			case _: null;
		}
	}
}
