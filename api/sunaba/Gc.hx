package sunaba;

class Gc {
	public inline static function collect() {
		untyped __lua__("collectgarbage()");
	}
}
