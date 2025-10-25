package sunaba;

enum abstract ProcessInfo(Int) from Int to Int {
	var activeObjects = cast 0;
	var collisionPairs = cast 1;
	var islandCount = cast 2;
	public static var values = [activeObjects, collisionPairs, islandCount];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "activeObjects": cast 0;
			case "collisionPairs": cast 1;
			case "islandCount": cast 2;
			case _: null;
		}
	}
}
