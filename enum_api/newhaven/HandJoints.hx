package newhaven;

enum abstract HandJoints(Int) from Int to Int {
	var palm = cast 0;
	var wrist = cast 1;
	var thumbMetacarpal = cast 2;
	var thumbProximal = cast 3;
	var thumbDistal = cast 4;
	var thumbTip = cast 5;
	var indexMetacarpal = cast 6;
	var indexProximal = cast 7;
	var indexIntermediate = cast 8;
	var indexDistal = cast 9;
	var indexTip = cast 10;
	var middleMetacarpal = cast 11;
	var middleProximal = cast 12;
	var middleIntermediate = cast 13;
	var middleDistal = cast 14;
	var middleTip = cast 15;
	var ringMetacarpal = cast 16;
	var ringProximal = cast 17;
	var ringIntermediate = cast 18;
	var ringDistal = cast 19;
	var ringTip = cast 20;
	var littleMetacarpal = cast 21;
	var littleProximal = cast 22;
	var littleIntermediate = cast 23;
	var littleDistal = cast 24;
	var littleTip = cast 25;
	var max = cast 26;
	public static var values = [palm, wrist, thumbMetacarpal, thumbProximal, thumbDistal, thumbTip, indexMetacarpal, indexProximal, indexIntermediate, indexDistal, indexTip, middleMetacarpal, middleProximal, middleIntermediate, middleDistal, middleTip, ringMetacarpal, ringProximal, ringIntermediate, ringDistal, ringTip, littleMetacarpal, littleProximal, littleIntermediate, littleDistal, littleTip, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "palm": cast 0;
			case "wrist": cast 1;
			case "thumbMetacarpal": cast 2;
			case "thumbProximal": cast 3;
			case "thumbDistal": cast 4;
			case "thumbTip": cast 5;
			case "indexMetacarpal": cast 6;
			case "indexProximal": cast 7;
			case "indexIntermediate": cast 8;
			case "indexDistal": cast 9;
			case "indexTip": cast 10;
			case "middleMetacarpal": cast 11;
			case "middleProximal": cast 12;
			case "middleIntermediate": cast 13;
			case "middleDistal": cast 14;
			case "middleTip": cast 15;
			case "ringMetacarpal": cast 16;
			case "ringProximal": cast 17;
			case "ringIntermediate": cast 18;
			case "ringDistal": cast 19;
			case "ringTip": cast 20;
			case "littleMetacarpal": cast 21;
			case "littleProximal": cast 22;
			case "littleIntermediate": cast 23;
			case "littleDistal": cast 24;
			case "littleTip": cast 25;
			case "max": cast 26;
			case _: null;
		}
	}
}
