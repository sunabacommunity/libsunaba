package newhaven;

enum abstract HostStatistic(Int) from Int to Int {
	var sentData = cast 0;
	var sentPackets = cast 1;
	var receivedData = cast 2;
	var receivedPackets = cast 3;
	public static var values = [sentData, sentPackets, receivedData, receivedPackets];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sentData": cast 0;
			case "sentPackets": cast 1;
			case "receivedData": cast 2;
			case "receivedPackets": cast 3;
			case _: null;
		}
	}
}
