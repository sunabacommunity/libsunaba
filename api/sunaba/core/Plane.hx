package sunaba.core;

@:native("Plane")
extern class Plane {
	public var d: Float;
	public var normal: Vector3;
	public function new(normal: Vector3, d: Float);
	@native("new")
	public static function zero(): Plane;
	@native("new")
	public static function fromAbcd(a: Vector3, b: Vector3, c: Vector3, d: Vector3): Plane;
	@:native("new")
	public static function formNormal(normal: Vector3): Plane;
	public function distanceTo(point: Vector3): Float;
	public function getCenter(): Vector3;
	public function hasPoint(point: Vector3, ?tolerance: Float): Bool;
	public function intersect3(b: Plane, c: Plane): Variant;
	public function intersectsRay(from: Vector3, dir: Vector3): Variant;
	public function intersectsSegment(from: Vector3, to: Vector3): Variant;
	public function isEqualApprox(toPlane: Plane): Bool;
	public function isFinite(): Bool;
	public function isPointOver(point: Vector3): Bool;
	public function normalized(): Plane;
	public function project(point: Vector3): Vector3;
}
