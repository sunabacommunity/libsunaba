package sunaba.core;

@:native("AABB")
extern class AABB {
	public function new(?position: Vector3, ?size: Vector3);
	public var end: Vector3;
	public var position: Vector3;
	public var size: Vector3;
	public function abs(): AABB;
	public function encloses(with: AABB): Bool;
	public function expand(toPoint: Vector3): AABB;
	public function getCenter(): Vector3;
	public function getEndpoint(idx: Int): Vector3;
	public function getLongestAxis(): Vector3;
	public function getLongestAxisIndex(): Int;
	public function getLongestAxisSize(): Float;
	public function getShortestAxis(): Vector3;
	public function getShortestAxisIndex(): Int;
	public function getShortestAxisSize(): Float;
	public function getSupport(direction: Vector3): Vector3;
	public function getVolume(): Float;
	public function grow(by: Float): AABB;
	public function hasPoint(point: Vector3): Bool;
	public function hasSurface(): Bool;
	public function hasVolume(): Bool;
	public function intersection(with: AABB): AABB;
	public function intersects(with: AABB): Bool;
	//public function intersectsPlane(plane: Plane)
	public function intersectsRay(from: Vector3, dir: Vector3): Variant;
	public function intersectsSegment(from: Vector3, to: Vector3): Variant;
	public function isEqualApprox(aabb: AABB): Bool;
	public function isFinite(): Bool;
	public function merge(with: AABB): AABB;
}
