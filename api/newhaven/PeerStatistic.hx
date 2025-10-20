package newhaven;

enum abstract PeerStatistic(Int) from Int to Int {
	var packetLoss = cast 0;
	var packetLossVariance = cast 1;
	var packetLossEpoch = cast 2;
	var roundTripTime = cast 3;
	var roundTripTimeVariance = cast 4;
	var lastRoundTripTime = cast 5;
	var lastRoundTripTimeVariance = cast 6;
	var packetThrottle = cast 7;
	var packetThrottleLimit = cast 8;
	var packetThrottleCounter = cast 9;
	var packetThrottleEpoch = cast 10;
	var packetThrottleAcceleration = cast 11;
	var packetThrottleDeceleration = cast 12;
	var packetThrottleInterval = cast 13;
	public static var values = [packetLoss, packetLossVariance, packetLossEpoch, roundTripTime, roundTripTimeVariance, lastRoundTripTime, lastRoundTripTimeVariance, packetThrottle, packetThrottleLimit, packetThrottleCounter, packetThrottleEpoch, packetThrottleAcceleration, packetThrottleDeceleration, packetThrottleInterval];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "packetLoss": cast 0;
			case "packetLossVariance": cast 1;
			case "packetLossEpoch": cast 2;
			case "roundTripTime": cast 3;
			case "roundTripTimeVariance": cast 4;
			case "lastRoundTripTime": cast 5;
			case "lastRoundTripTimeVariance": cast 6;
			case "packetThrottle": cast 7;
			case "packetThrottleLimit": cast 8;
			case "packetThrottleCounter": cast 9;
			case "packetThrottleEpoch": cast 10;
			case "packetThrottleAcceleration": cast 11;
			case "packetThrottleDeceleration": cast 12;
			case "packetThrottleInterval": cast 13;
			case _: null;
		}
	}
}
