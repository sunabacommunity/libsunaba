package newhaven;

enum abstract RpcMode(Int) from Int to Int {
	var disabled = cast 0;
	var anyPeer = cast 1;
	var authority = cast 2;
	public static var values = [disabled, anyPeer, authority];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "anyPeer": cast 1;
			case "authority": cast 2;
			case _: null;
		}
	}
}
