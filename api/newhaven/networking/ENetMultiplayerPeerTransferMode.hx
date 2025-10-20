package newhaven.networking;

enum abstract ENetMultiplayerPeerTransferMode(Int) from Int to Int {
	var unreliable = cast 0;
	var unreliableOrdered = cast 1;
	var reliable = cast 2;
	public static var values = [unreliable, unreliableOrdered, reliable];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unreliable": cast 0;
			case "unreliableOrdered": cast 1;
			case "reliable": cast 2;
			case _: null;
		}
	}
}
