package sunaba.core;

@:native("Projection")
extern class ProjectionNative {
	public function new(x: Float, y: Float, z: Float, W: Float);
	@:native("new")
	public static function zero(): Projection;
	@:native("new")
	public static function fromTransform(tf: Transform3D): Projection;
	public var x: Vector4;
	public var y: Vector4;
	public var z: Vector4;
	public var w: Vector4;
	public static function createDepthCorrection(flipY: Bool): Projection;
	public static function createFitAabb(aabb: AABB): Projection;
	public static function createFroHmd(eye: Int, aspect: Float, intraocularDist: Float, displayWidth: Float, displayToLens: Float, oversample: Float, zNear: Float, zFar: Float): Projection;
	public static function createFrustum(left: Float, right: Float, bottom: Float, top: Float, zNear: Float, zFar: Float): Projection;
	public static function createFrustumAspect(size: Float, aspect: Float, offset: Vector2, zNear: Float, flipFov: Bool): Projection;
	public static function createLightAtlasRect(rec: Rect2): Projection;
	public static function createOrthogonal(left: Float, right: Float, bottom: Float, top: Float, zNear: Float, zFar: Float): Projection;
	public static function createOrthogonalAspect(size: Float, apsect: Float, zNear: Float, zFar: Float, flipFov: Bool): Projection;
	public static function createPerspective(fovy: Float, aspect: Float, zNear: Float, zFar: Float, flipFov: Bool): Projection;
	//todo: continue work?
}

@:forward(
	x,
	y,
	z,
	w,
	zero,
	fromTransform,
	createDepthCorrection,
	createFitAabb,
	createFroHmd,
	createFrustum,
	createFrustumAspect,
	createLightAtlasRect,
	createOrthogonal,
	createOrthogonalAspect,
	createPerspective
)
abstract Projection(ProjectionNative) from ProjectionNative to ProjectionNative {
	public inline function new(x: Float = 0, y: Float = 0, z: Float = 0, W: Float = 0) {
		this = new ProjectionNative(x, y, z, W);
	}

	public inline static function zero(): Projection {
		return ProjectionNative.zero();
	}

	public inline static function fromTransform(tf: Transform3D): Projection {
		return ProjectionNative.fromTransform(tf);
	}

	@:op([])
	public inline function get(index: Int): Vector4 {
		switch (index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			case 3: return this.w;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index: Int, value: Vector4): Vector4 {
		switch (index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.z = value;
			case 3: this.w = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	/*@:op(A * B)
	public inline function multiply(other: Projection): Projection {
		// Matrix multiplication
		return new Projection(
			this.x.x * other.x.x + this.y.x * other.x.y + this.z.x * other.x.z + this.w.x * other.x.w,
			this.x.y * other.x + this.y.y * other.x.y + this.z.y * other.x.z + this.w.y * other.x.w,
			this.x.z * other.x + this.y.z * other.x.y + this.z.z * other.x.z + this.w.z * other.x.w,
			this.x.w * other.x + this.y.w * other.x.y + this.z.w * other.x.z + this.w.w * other.x.w
		);
	}*/

	@:op(A == B)
	public inline function equals(other: Projection): Bool {
		return this.x.equals(other.x) && this.y.equals(other.y) && this.z.equals(other.z) && this.w.equals(other.w);
	}

	@:op(A != B)
	public inline function notEquals(other: Projection): Bool {
		var og: Projection = this;
		return !og.equals(other);
	}
}

