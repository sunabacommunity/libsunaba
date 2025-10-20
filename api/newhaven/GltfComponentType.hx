package newhaven;

enum abstract GltfComponentType(Int) from Int to Int {
	var none = cast 0;
	var signedByte = cast 5120;
	var unsignedByte = cast 5121;
	var signedShort = cast 5122;
	var unsignedShort = cast 5123;
	var signedInt = cast 5124;
	var unsignedInt = cast 5125;
	var singleFloat = cast 5126;
	var doubleFloat = cast 5130;
	var halfFloat = cast 5131;
	var signedLong = cast 5134;
	var unsignedLong = cast 5135;
	public static var values = [none, signedByte, unsignedByte, signedShort, unsignedShort, signedInt, unsignedInt, singleFloat, doubleFloat, halfFloat, signedLong, unsignedLong];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "signedByte": cast 5120;
			case "unsignedByte": cast 5121;
			case "signedShort": cast 5122;
			case "unsignedShort": cast 5123;
			case "signedInt": cast 5124;
			case "unsignedInt": cast 5125;
			case "singleFloat": cast 5126;
			case "doubleFloat": cast 5130;
			case "halfFloat": cast 5131;
			case "signedLong": cast 5134;
			case "unsignedLong": cast 5135;
			case _: null;
		}
	}
}
