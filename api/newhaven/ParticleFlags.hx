package newhaven;

enum abstract ParticleFlags(Int) from Int to Int {
	var alignYToVelocity = cast 0;
	var rotateY = cast 1;
	var disableZ = cast 2;
	var dampingAsFriction = cast 3;
	var max = cast 4;
	public static var values = [alignYToVelocity, rotateY, disableZ, dampingAsFriction, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "alignYToVelocity": cast 0;
			case "rotateY": cast 1;
			case "disableZ": cast 2;
			case "dampingAsFriction": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
