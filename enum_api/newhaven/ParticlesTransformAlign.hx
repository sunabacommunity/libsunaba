package newhaven;

enum abstract ParticlesTransformAlign(Int) from Int to Int {
	var disabled = cast 0;
	var zBillboard = cast 1;
	var yToVelocity = cast 2;
	var zBillboardYToVelocity = cast 3;
	public static var values = [disabled, zBillboard, yToVelocity, zBillboardYToVelocity];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "zBillboard": cast 1;
			case "yToVelocity": cast 2;
			case "zBillboardYToVelocity": cast 3;
			case _: null;
		}
	}
}
