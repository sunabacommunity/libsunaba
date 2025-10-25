package sunaba;

enum abstract SignalingState(Int) from Int to Int {
	var stable = cast 0;
	var haveLocalOffer = cast 1;
	var haveRemoteOffer = cast 2;
	var haveLocalPranswer = cast 3;
	var haveRemotePranswer = cast 4;
	var closed = cast 5;
	public static var values = [stable, haveLocalOffer, haveRemoteOffer, haveLocalPranswer, haveRemotePranswer, closed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stable": cast 0;
			case "haveLocalOffer": cast 1;
			case "haveRemoteOffer": cast 2;
			case "haveLocalPranswer": cast 3;
			case "haveRemotePranswer": cast 4;
			case "closed": cast 5;
			case _: null;
		}
	}
}
