package sunaba;

enum abstract JoyButton(Int) from Int to Int {
	var a = cast 0;
	var b = cast 1;
	var x = cast 2;
	var y = cast 3;
	var back = cast 4;
	var guide = cast 5;
	var start = cast 6;
	var leftStick = cast 7;
	var rightStick = cast 8;
	var leftShoulder = cast 9;
	var rightShoulder = cast 10;
	var dpadUp = cast 11;
	var dpadDown = cast 12;
	var dpadLeft = cast 13;
	var dpadRight = cast 14;
	var misc1 = cast 15;
	var paddle1 = cast 16;
	var paddle2 = cast 17;
	var paddle3 = cast 18;
	var paddle4 = cast 19;
	var touchpad = cast 20;
	var sdlMax = cast 21;
	var max = cast 128;
	var invalid = cast -1;
	public static var values = [a, b, x, y, back, guide, start, leftStick, rightStick, leftShoulder, rightShoulder, dpadUp, dpadDown, dpadLeft, dpadRight, misc1, paddle1, paddle2, paddle3, paddle4, touchpad, sdlMax, max, invalid];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "a": cast 0;
			case "b": cast 1;
			case "x": cast 2;
			case "y": cast 3;
			case "back": cast 4;
			case "guide": cast 5;
			case "start": cast 6;
			case "leftStick": cast 7;
			case "rightStick": cast 8;
			case "leftShoulder": cast 9;
			case "rightShoulder": cast 10;
			case "dpadUp": cast 11;
			case "dpadDown": cast 12;
			case "dpadLeft": cast 13;
			case "dpadRight": cast 14;
			case "misc1": cast 15;
			case "paddle1": cast 16;
			case "paddle2": cast 17;
			case "paddle3": cast 18;
			case "paddle4": cast 19;
			case "touchpad": cast 20;
			case "sdlMax": cast 21;
			case "max": cast 128;
			case "invalid": cast -1;
			case _: null;
		}
	}
}
