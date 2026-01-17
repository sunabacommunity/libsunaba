package sunaba;

enum abstract ProcessInfo(Int) from Int to Int {
	var activeMaps = cast 0;
	var regionCount = cast 1;
	var agentCount = cast 2;
	var linkCount = cast 3;
	var polygonCount = cast 4;
	var edgeCount = cast 5;
	var edgeMergeCount = cast 6;
	var edgeConnectionCount = cast 7;
	var edgeFreeCount = cast 8;
	var obstacleCount = cast 9;
	public static var values = [activeMaps, regionCount, agentCount, linkCount, polygonCount, edgeCount, edgeMergeCount, edgeConnectionCount, edgeFreeCount, obstacleCount];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "activeMaps": cast 0;
			case "regionCount": cast 1;
			case "agentCount": cast 2;
			case "linkCount": cast 3;
			case "polygonCount": cast 4;
			case "edgeCount": cast 5;
			case "edgeMergeCount": cast 6;
			case "edgeConnectionCount": cast 7;
			case "edgeFreeCount": cast 8;
			case "obstacleCount": cast 9;
			case _: null;
		}
	}
}
