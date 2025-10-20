package newhaven;

enum abstract Customization(Int) from Int to Int {
	var hiddenFiles = cast 0;
	var createFolder = cast 1;
	var fileFilter = cast 2;
	var fileSort = cast 3;
	var favorites = cast 4;
	var recent = cast 5;
	var layout = cast 6;
	public static var values = [hiddenFiles, createFolder, fileFilter, fileSort, favorites, recent, layout];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "hiddenFiles": cast 0;
			case "createFolder": cast 1;
			case "fileFilter": cast 2;
			case "fileSort": cast 3;
			case "favorites": cast 4;
			case "recent": cast 5;
			case "layout": cast 6;
			case _: null;
		}
	}
}
