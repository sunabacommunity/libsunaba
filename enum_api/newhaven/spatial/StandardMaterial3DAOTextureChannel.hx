package newhaven.spatial;

enum abstract StandardMaterial3DAOTextureChannel(Int) from Int to Int {
	var red = cast 0;
	var green = cast 1;
	var blue = cast 2;
	var alpha = cast 3;
	var grayscale = cast 4;
	public static var values = [red, green, blue, alpha, grayscale];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "red": cast 0;
			case "green": cast 1;
			case "blue": cast 2;
			case "alpha": cast 3;
			case "grayscale": cast 4;
			case _: null;
		}
	}
}
