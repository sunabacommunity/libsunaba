package newhaven;

enum abstract SystemDir(Int) from Int to Int {
	var desktop = cast 0;
	var dcim = cast 1;
	var documents = cast 2;
	var downloads = cast 3;
	var movies = cast 4;
	var music = cast 5;
	var pictures = cast 6;
	var ringtones = cast 7;
	public static var values = [desktop, dcim, documents, downloads, movies, music, pictures, ringtones];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "desktop": cast 0;
			case "dcim": cast 1;
			case "documents": cast 2;
			case "downloads": cast 3;
			case "movies": cast 4;
			case "music": cast 5;
			case "pictures": cast 6;
			case "ringtones": cast 7;
			case _: null;
		}
	}
}
