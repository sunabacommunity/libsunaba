package newhaven;

enum abstract TrackerType(Int) from Int to Int {
	var head = cast 1;
	var controller = cast 2;
	var basestation = cast 4;
	var anchor = cast 8;
	var hand = cast 16;
	var body = cast 32;
	var face = cast 64;
	var anyKnown = cast 127;
	var unknown = cast 128;
	var any = cast 255;
	public static var values = [head, controller, basestation, anchor, hand, body, face, anyKnown, unknown, any];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "head": cast 1;
			case "controller": cast 2;
			case "basestation": cast 4;
			case "anchor": cast 8;
			case "hand": cast 16;
			case "body": cast 32;
			case "face": cast 64;
			case "anyKnown": cast 127;
			case "unknown": cast 128;
			case "any": cast 255;
			case _: null;
		}
	}
}
