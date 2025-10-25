package sunaba;

enum abstract HandJoint(Int) from Int to Int {
	var palm = cast 0;
	var wrist = cast 1;
	var thumbMetacarpal = cast 2;
	var thumbPhalanxProximal = cast 3;
	var thumbPhalanxDistal = cast 4;
	var thumbTip = cast 5;
	var indexFingerMetacarpal = cast 6;
	var indexFingerPhalanxProximal = cast 7;
	var indexFingerPhalanxIntermediate = cast 8;
	var indexFingerPhalanxDistal = cast 9;
	var indexFingerTip = cast 10;
	var middleFingerMetacarpal = cast 11;
	var middleFingerPhalanxProximal = cast 12;
	var middleFingerPhalanxIntermediate = cast 13;
	var middleFingerPhalanxDistal = cast 14;
	var middleFingerTip = cast 15;
	var ringFingerMetacarpal = cast 16;
	var ringFingerPhalanxProximal = cast 17;
	var ringFingerPhalanxIntermediate = cast 18;
	var ringFingerPhalanxDistal = cast 19;
	var ringFingerTip = cast 20;
	var pinkyFingerMetacarpal = cast 21;
	var pinkyFingerPhalanxProximal = cast 22;
	var pinkyFingerPhalanxIntermediate = cast 23;
	var pinkyFingerPhalanxDistal = cast 24;
	var pinkyFingerTip = cast 25;
	var max = cast 26;
	public static var values = [palm, wrist, thumbMetacarpal, thumbPhalanxProximal, thumbPhalanxDistal, thumbTip, indexFingerMetacarpal, indexFingerPhalanxProximal, indexFingerPhalanxIntermediate, indexFingerPhalanxDistal, indexFingerTip, middleFingerMetacarpal, middleFingerPhalanxProximal, middleFingerPhalanxIntermediate, middleFingerPhalanxDistal, middleFingerTip, ringFingerMetacarpal, ringFingerPhalanxProximal, ringFingerPhalanxIntermediate, ringFingerPhalanxDistal, ringFingerTip, pinkyFingerMetacarpal, pinkyFingerPhalanxProximal, pinkyFingerPhalanxIntermediate, pinkyFingerPhalanxDistal, pinkyFingerTip, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "palm": cast 0;
			case "wrist": cast 1;
			case "thumbMetacarpal": cast 2;
			case "thumbPhalanxProximal": cast 3;
			case "thumbPhalanxDistal": cast 4;
			case "thumbTip": cast 5;
			case "indexFingerMetacarpal": cast 6;
			case "indexFingerPhalanxProximal": cast 7;
			case "indexFingerPhalanxIntermediate": cast 8;
			case "indexFingerPhalanxDistal": cast 9;
			case "indexFingerTip": cast 10;
			case "middleFingerMetacarpal": cast 11;
			case "middleFingerPhalanxProximal": cast 12;
			case "middleFingerPhalanxIntermediate": cast 13;
			case "middleFingerPhalanxDistal": cast 14;
			case "middleFingerTip": cast 15;
			case "ringFingerMetacarpal": cast 16;
			case "ringFingerPhalanxProximal": cast 17;
			case "ringFingerPhalanxIntermediate": cast 18;
			case "ringFingerPhalanxDistal": cast 19;
			case "ringFingerTip": cast 20;
			case "pinkyFingerMetacarpal": cast 21;
			case "pinkyFingerPhalanxProximal": cast 22;
			case "pinkyFingerPhalanxIntermediate": cast 23;
			case "pinkyFingerPhalanxDistal": cast 24;
			case "pinkyFingerTip": cast 25;
			case "max": cast 26;
			case _: null;
		}
	}
}
