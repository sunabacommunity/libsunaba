package sunaba;

enum abstract CellNeighbor(Int) from Int to Int {
	var rightSide = cast 0;
	var rightCorner = cast 1;
	var bottomRightSide = cast 2;
	var bottomRightCorner = cast 3;
	var bottomSide = cast 4;
	var bottomCorner = cast 5;
	var bottomLeftSide = cast 6;
	var bottomLeftCorner = cast 7;
	var leftSide = cast 8;
	var leftCorner = cast 9;
	var topLeftSide = cast 10;
	var topLeftCorner = cast 11;
	var topSide = cast 12;
	var topCorner = cast 13;
	var topRightSide = cast 14;
	var topRightCorner = cast 15;
	public static var values = [rightSide, rightCorner, bottomRightSide, bottomRightCorner, bottomSide, bottomCorner, bottomLeftSide, bottomLeftCorner, leftSide, leftCorner, topLeftSide, topLeftCorner, topSide, topCorner, topRightSide, topRightCorner];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rightSide": cast 0;
			case "rightCorner": cast 1;
			case "bottomRightSide": cast 2;
			case "bottomRightCorner": cast 3;
			case "bottomSide": cast 4;
			case "bottomCorner": cast 5;
			case "bottomLeftSide": cast 6;
			case "bottomLeftCorner": cast 7;
			case "leftSide": cast 8;
			case "leftCorner": cast 9;
			case "topLeftSide": cast 10;
			case "topLeftCorner": cast 11;
			case "topSide": cast 12;
			case "topCorner": cast 13;
			case "topRightSide": cast 14;
			case "topRightCorner": cast 15;
			case _: null;
		}
	}
}
