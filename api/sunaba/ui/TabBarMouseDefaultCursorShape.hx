package sunaba.ui;

enum abstract TabBarMouseDefaultCursorShape(Int) from Int to Int {
	var arrow = cast 0;
	var ibeam = cast 1;
	var pointingHand = cast 2;
	var cross = cast 3;
	var wait = cast 4;
	var busy = cast 5;
	var drag = cast 6;
	var canDrop = cast 7;
	var forbidden = cast 8;
	var vsize = cast 9;
	var hsize = cast 10;
	var bdiagsize = cast 11;
	var fdiagsize = cast 12;
	var move = cast 13;
	var vsplit = cast 14;
	var hsplit = cast 15;
	var help = cast 16;
	public static var values = [arrow, ibeam, pointingHand, cross, wait, busy, drag, canDrop, forbidden, vsize, hsize, bdiagsize, fdiagsize, move, vsplit, hsplit, help];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "arrow": cast 0;
			case "ibeam": cast 1;
			case "pointingHand": cast 2;
			case "cross": cast 3;
			case "wait": cast 4;
			case "busy": cast 5;
			case "drag": cast 6;
			case "canDrop": cast 7;
			case "forbidden": cast 8;
			case "vsize": cast 9;
			case "hsize": cast 10;
			case "bdiagsize": cast 11;
			case "fdiagsize": cast 12;
			case "move": cast 13;
			case "vsplit": cast 14;
			case "hsplit": cast 15;
			case "help": cast 16;
			case _: null;
		}
	}
}
