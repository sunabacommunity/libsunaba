package sunaba;

enum abstract DataType(Int) from Int to Int {
	var color = cast 0;
	var constant = cast 1;
	var font = cast 2;
	var fontSize = cast 3;
	var icon = cast 4;
	var stylebox = cast 5;
	var max = cast 6;
	public static var values = [color, constant, font, fontSize, icon, stylebox, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "color": cast 0;
			case "constant": cast 1;
			case "font": cast 2;
			case "fontSize": cast 3;
			case "icon": cast 4;
			case "stylebox": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
