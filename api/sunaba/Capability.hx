package sunaba;

enum abstract Capability(Int) from Int to Int {
	var planeTracking = cast 1000741000;
	var markerTrackingQrCode = cast 1000743000;
	var markerTrackingMicroQrCode = cast 1000743001;
	var markerTrackingArucoMarker = cast 1000743002;
	var markerTrackingAprilTag = cast 1000743003;
	var anchor = cast 1000762000;
	public static var values = [planeTracking, markerTrackingQrCode, markerTrackingMicroQrCode, markerTrackingArucoMarker, markerTrackingAprilTag, anchor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "planeTracking": cast 1000741000;
			case "markerTrackingQrCode": cast 1000743000;
			case "markerTrackingMicroQrCode": cast 1000743001;
			case "markerTrackingArucoMarker": cast 1000743002;
			case "markerTrackingAprilTag": cast 1000743003;
			case "anchor": cast 1000762000;
			case _: null;
		}
	}
}
