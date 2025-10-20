package newhaven.spatial;

enum abstract Label3DCastShadow(Int) from Int to Int {
	var off = cast 0;
	var on = cast 1;
	var doubleSided = cast 2;
	var shadowsOnly = cast 3;
	public static var values = [off, on, doubleSided, shadowsOnly];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "off": cast 0;
			case "on": cast 1;
			case "doubleSided": cast 2;
			case "shadowsOnly": cast 3;
			case _: null;
		}
	}
}
