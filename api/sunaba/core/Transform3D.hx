package sunaba.core;

@:native("Transform3D")
extern class Transform3DNative {
    public var basis : Basis;
    public var origin : Vector3;
    public function new(basis : Basis, origin : Vector3);
    @:native("new")
    public static function zero() : Transform3D;
    public function affineInverse() : Transform3D;
    public function interpolateWith(tform : Transform3D, c : Float) : Transform3D;
    public function isEqualApprox(tform : Transform3D) : Bool;
    public function lookingAt(target : Vector3, up : Vector3) : Transform3D;
    public function orthonormalized() : Transform3D;
    public function rotated(axis : Vector3, angle : Float) : Transform3D;
    public function rotatedLocal(axis : Vector3, angle : Float) : Transform3D;
    public function scaled(scale : Vector3) : Transform3D;
    public function scaledLocal(scale : Vector3) : Transform3D;
    public function translated(translation : Vector3) : Transform3D;
    public function translatedLocal(translation : Vector3) : Transform3D;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	basis,
	origin,
	zero,
	affineInverse,
	interpolateWith,
	isEqualApprox,
	lookingAt,
	orthonormalized,
	rotated,
	rotatedLocal,
	scaled,
	scaledLocal,
	translated,
	translatedLocal,
	toString
)
abstract Transform3D(Transform3DNative) from Transform3DNative to Transform3DNative {
	public inline function new(basis : Basis, origin : Vector3) {
		this = new Transform3DNative(basis, origin);
	}

	public static inline function zero() : Transform3D {
		return Transform3DNative.zero();
	}

	@:op([])
	public inline function get(index : Int) : Dynamic {
		switch(index) {
			case 0: return this.basis;
			case 1: return this.origin;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Dynamic) : Dynamic {
		switch(index) {
			case 0: this.basis = value;
			case 1: this.origin = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	/*@:op(A * B)
	public inline function multiplyTransform3D(other : Transform3D) : Transform3D {
		var thisBasis: Basis = this.basis;
		var new_basis : Basis = this.basis * other.basis;
		var new_origin : Vector3 = thisBasis * other.origin + this.origin;
		return new Transform3D(new_basis, new_origin);
	}*/

	@:op(A == B)
	public inline function equals(other : Transform3D) : Bool {
		return this.basis == other.basis && this.origin == other.origin;
	}

	@:op(A != B)
	public inline function notEquals(other : Transform3D) : Bool {
		var og: Transform3D = this;
		return !og.equals(other);
	}

	/*
	@:op(A * B)
	public inline function multiplyVector3(other : Vector3) : Vector3 {
		return this.basis * other + this.origin;
	}
	*/

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float) : Transform3D {
		var new_basis : Basis = this.basis.multiplyVector3ToBasis(new Vector3(scalar, scalar, scalar));
		var new_origin : Vector3 = this.origin * scalar;
		return new Transform3D(new_basis, new_origin);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float) : Transform3D {
		var new_basis : Basis = this.basis.multiplyVector3ToBasis(new Vector3(1 / scalar, 1 / scalar, 1 / scalar));
		var new_origin : Vector3 = this.origin / scalar;
		return new Transform3D(new_basis, new_origin);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int) : Transform3D {
		var thisA: Transform3D = this;
		return thisA.multiplyScalar(cast scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int) : Transform3D {
		var thisA: Transform3D = this;
		return thisA.divideScalar(cast scalar);
	}

	/*
	@:op(A * B)
	public inline function multiplyPlane(other : Plane) : Plane {
		var n: Vector3 = other.normal;
		var p: Vector3 = n * other.d;
		p = this * p;
		n = this.basis.multiplyVector3(n).normalized();
		var d: Float = n.dot(p);
		return new Plane(n, d);
	}

	@:op(A * B)
	public inline function multiplyAABB(aabb: AABB): AABB {
		var corners = aabb.getCorners();
		var transformedCorners = corners.map(corner -> this * corner);
		return AABB.fromPoints(transformedCorners);
	}
	*/
}
