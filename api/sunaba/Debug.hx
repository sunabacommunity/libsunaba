package sunaba;

class Debug {
	public static function error(err: String, title: String = "Error"): Void {
		untyped __lua__("_G.__errord(err, title)");
	}

	public static function info(msg: String, title: String = "Information"): Void {
		untyped __lua__("_G.__infod(msg, title)");
	}

	public static function warn(msg: String, title: String = "Warning"): Void {
		untyped __lua__("_G.__warnd(msg, title)");
	}
}
