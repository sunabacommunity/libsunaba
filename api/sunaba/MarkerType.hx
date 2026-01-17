package sunaba;

enum abstract MarkerType(Int) from Int to Int {
	var unknown = cast 0;
	var qrcode = cast 1;
	var microQrcode = cast 2;
	var aruco = cast 3;
	var aprilTag = cast 4;
	var max = cast 5;
	public static var values = [unknown, qrcode, microQrcode, aruco, aprilTag, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "qrcode": cast 1;
			case "microQrcode": cast 2;
			case "aruco": cast 3;
			case "aprilTag": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
