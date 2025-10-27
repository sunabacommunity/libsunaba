package sunaba.core;

@:native("Projection")
extern class Projection {
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
