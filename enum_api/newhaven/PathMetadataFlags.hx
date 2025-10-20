package newhaven;

enum abstract PathMetadataFlags(Int) from Int to Int {
	var none = cast 0;
	var types = cast 1;
	var rids = cast 2;
	var owners = cast 4;
	var all = cast 7;
	public static var values = [none, types, rids, owners, all];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "types": cast 1;
			case "rids": cast 2;
			case "owners": cast 4;
			case "all": cast 7;
			case _: null;
		}
	}
}
