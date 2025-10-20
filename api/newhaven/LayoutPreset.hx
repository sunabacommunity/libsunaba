package newhaven;

enum abstract LayoutPreset(Int) from Int to Int {
	var topLeft = cast 0;
	var topRight = cast 1;
	var bottomLeft = cast 2;
	var bottomRight = cast 3;
	var centerLeft = cast 4;
	var centerTop = cast 5;
	var centerRight = cast 6;
	var centerBottom = cast 7;
	var center = cast 8;
	var leftWide = cast 9;
	var topWide = cast 10;
	var rightWide = cast 11;
	var bottomWide = cast 12;
	var vcenterWide = cast 13;
	var hcenterWide = cast 14;
	var fullRect = cast 15;
	public static var values = [topLeft, topRight, bottomLeft, bottomRight, centerLeft, centerTop, centerRight, centerBottom, center, leftWide, topWide, rightWide, bottomWide, vcenterWide, hcenterWide, fullRect];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "topLeft": cast 0;
			case "topRight": cast 1;
			case "bottomLeft": cast 2;
			case "bottomRight": cast 3;
			case "centerLeft": cast 4;
			case "centerTop": cast 5;
			case "centerRight": cast 6;
			case "centerBottom": cast 7;
			case "center": cast 8;
			case "leftWide": cast 9;
			case "topWide": cast 10;
			case "rightWide": cast 11;
			case "bottomWide": cast 12;
			case "vcenterWide": cast 13;
			case "hcenterWide": cast 14;
			case "fullRect": cast 15;
			case _: null;
		}
	}
}
