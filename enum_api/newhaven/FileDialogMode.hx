package newhaven;

enum abstract FileDialogMode(Int) from Int to Int {
	var openFile = cast 0;
	var openFiles = cast 1;
	var openDir = cast 2;
	var openAny = cast 3;
	var saveFile = cast 4;
	public static var values = [openFile, openFiles, openDir, openAny, saveFile];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "openFile": cast 0;
			case "openFiles": cast 1;
			case "openDir": cast 2;
			case "openAny": cast 3;
			case "saveFile": cast 4;
			case _: null;
		}
	}
}
