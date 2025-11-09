package sunaba;

class Gc {
	public static function collect() {
		untyped __lua__("collectgarbage()");
	}
}
