package newhaven;

enum abstract AreaParameter(Int) from Int to Int {
	var gravityOverrideMode = cast 0;
	var gravity = cast 1;
	var gravityVector = cast 2;
	var gravityIsPoint = cast 3;
	var gravityPointUnitDistance = cast 4;
	var linearDampOverrideMode = cast 5;
	var linearDamp = cast 6;
	var angularDampOverrideMode = cast 7;
	var angularDamp = cast 8;
	var priority = cast 9;
	var windForceMagnitude = cast 10;
	var windSource = cast 11;
	var windDirection = cast 12;
	var windAttenuationFactor = cast 13;
	public static var values = [gravityOverrideMode, gravity, gravityVector, gravityIsPoint, gravityPointUnitDistance, linearDampOverrideMode, linearDamp, angularDampOverrideMode, angularDamp, priority, windForceMagnitude, windSource, windDirection, windAttenuationFactor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "gravityOverrideMode": cast 0;
			case "gravity": cast 1;
			case "gravityVector": cast 2;
			case "gravityIsPoint": cast 3;
			case "gravityPointUnitDistance": cast 4;
			case "linearDampOverrideMode": cast 5;
			case "linearDamp": cast 6;
			case "angularDampOverrideMode": cast 7;
			case "angularDamp": cast 8;
			case "priority": cast 9;
			case "windForceMagnitude": cast 10;
			case "windSource": cast 11;
			case "windDirection": cast 12;
			case "windAttenuationFactor": cast 13;
			case _: null;
		}
	}
}
