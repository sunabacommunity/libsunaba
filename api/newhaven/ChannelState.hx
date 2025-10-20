package newhaven;

enum abstract ChannelState(Int) from Int to Int {
	var connecting = cast 0;
	var open = cast 1;
	var closing = cast 2;
	var closed = cast 3;
	public static var values = [connecting, open, closing, closed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "connecting": cast 0;
			case "open": cast 1;
			case "closing": cast 2;
			case "closed": cast 3;
			case _: null;
		}
	}
}
