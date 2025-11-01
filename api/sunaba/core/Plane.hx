package sunaba.core;

@:native("Plane")
extern class PlaneNative {
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

@:forward(
	d,
	normal,
	zero,
	fromAbcd,
	formNormal,
	distanceTo,
	getCenter,
	hasPoint,
	intersect3,
	intersectsRay,
	intersectsSegment,
	isEqualApprox,
	isFinite,
	isPointOver,
	normalized,
	project
)
abstract Plane(PlaneNative) from PlaneNative to PlaneNative {
	public static final PLANE_YZ: Plane = Plane.fromAbcd(new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 1), new Vector3(0, 0, 0));
	public static final PLANE_XZ: Plane = Plane.fromAbcd(new Vector3(0, 1, 0), new Vector3(1, 0, 0), new Vector3(0, 0, 1), new Vector3(0, 0, 0));
	public static final PLANE_XY: Plane = Plane.fromAbcd(new Vector3(0, 0, 1), new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 0));
	public static final ZERO: Plane = Plane.zero();

	public inline function new(normal: Vector3, d: Float) {
		this = new PlaneNative(normal, d);
	}

	public static inline function fromNormal(normal: Vector3): Plane {
		return PlaneNative.formNormal(normal);
	}

	public static inline function fromAbcd(a: Vector3, b: Vector3, c: Vector3, d: Vector3): Plane {
		return PlaneNative.fromAbcd(a, b, c, d);
	}

	public static inline function zero(): Plane {
		return PlaneNative.zero();
	}

	@:op([])
	public inline function get(index: Int): Dynamic {
		switch(index) {
			case 0: return this.normal;
			case 1: return this.d;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index: Int, value: Dynamic): Dynamic {
		switch(index) {
			case 0: this.normal = cast value;
			case 1: this.d = cast value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A == B)
	public inline function equals(other: Plane): Bool {
		return this.normal == other.normal && this.d == other.d;
	}

	@:op(A != B)
	public inline function notEquals(other: Plane): Bool {
		var og: Plane = this;
		return !og.equals(other);
	}


	@:op(A * B)
	public inline function multiplyTransform3D(other: Transform3D): Plane {
		var n: Vector3 = this.normal;
		var p: Vector3 = n.multiplyScalar(this.d);
		p = other.xform(p);
		n = other.basis.xform(n).normalized();
		var d: Float = n.dot(p);
		return new Plane(n, d);
	}
}
