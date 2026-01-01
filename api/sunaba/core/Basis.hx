package sunaba.core;
import sunaba.core.native.NativeReference;
import sunaba.core.native.ScriptType;

@:native("Basis")
extern class BasisNative {
    public var rows: TypedArray<Vector3>;
    public var x : Vector3;
    public var y: Vector3;
    public var z: Vector3;
    public function new(x : Vector3, y : Vector3, z : Vector3);
    @:native("new")
    public static function zero() : Basis;
    public function determinant() : Float;
    public function fromEuler(euler : Vector3, order : Int = 2) : Basis;
    public function fromScale(scale : Vector3) : Basis;
    public function getEuler(order : Int = 2) : Vector3;
    public function getRoationQuaternion() : Quaternion;
    public function getScale() : Vector3;
    public function inverse() : Basis;
    public function isEqualApprox(basis : Basis) : Bool;
    public function lookingAt(target : Vector3, up : Vector3) : Basis;
    public function orthonormalized() : Basis;
    public function scaled(scale : Vector3) : Basis;
    public function slerp(to : Basis, weight : Float) : Basis;
    public function tdotx(v : Vector3) : Float;
    public function tdoty(v : Vector3) : Float;
    public function tdotz(v : Vector3) : Float;
    public function transposed() : Basis;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	rows,
	x,
	y,
	z,
	zero,
	determinant,
	fromEuler,
	fromScale,
	getEuler,
	getRoationQuaternion,
	getScale,
	inverse,
	isEqualApprox,
	lookingAt,
	orthonormalized,
	scaled,
	slerp,
	tdotx,
	tdoty,
	tdotz,
	transposed,
	toString
)
abstract Basis(BasisNative) from BasisNative to BasisNative {
	public inline function new(x : Vector3, y : Vector3, z : Vector3) {
		this = new BasisNative(x, y, z);
	}

	public static final IDENTITY: Basis = new Basis(new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 1));

	public static final FLIP_X: Basis = new Basis(new Vector3(-1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 1));

	public static final FLIP_Y: Basis = new Basis(new Vector3(1, 0, 0), new Vector3(0, -1, 0), new Vector3(0, 0, 1));

	public static final FLIP_Z: Basis = new Basis(new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, -1));

	public static final ZERO: Basis = BasisNative.zero();

	public static function zero() {
		return BasisNative.zero();
	}

	@:op([])
	public inline function get(index : Int) : Vector3 {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Vector3) : Vector3 {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.z = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A * B)
	public inline function multiply(other : Basis) : Basis {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Basis = this;
		args.append(og);
		args.append(other);
		return ref.call("basis_multiply", args);
	}

	public inline function multiplyVector3ToBasis(other : Vector3) : Basis {
		return new Basis(
			new Vector3(
				this.x.x * other.x,
				this.x.y * other.x,
				this.x.z * other.x
			),
			new Vector3(
				this.y.x * other.y,
				this.y.y * other.y,
				this.y.z * other.y
			),
			new Vector3(
				this.z.x * other.z,
				this.z.y * other.z,
				this.z.z * other.z
			)
		);
	}

	@:op(A * B)
	public inline function multiplyVector3(other : Vector3) : Vector3 {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Basis = this;
		args.append(og);
		args.append(other);
		return ref.call("basis_multiply_vector3", args);
	}

	@:op(A == B)
	public inline function equals(other : Basis) : Bool {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Basis = this;
		args.append(og);
		args.append(other);
		return ref.call("basis_equal", args);
	}

	@:op(A != B)
	public inline function notEquals(other : Basis) : Bool {
		var og: Basis = this;
		return og.equals(other) != true;
	}

	@:op(A / B)
	public inline function divideInt(other : Int) : Basis {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Basis = this;
		args.append(og);
		args.append(other);
		return ref.call("basis_divide_int", args);
	}

	@:op(A / B)
	public inline function divideFloat(other : Float) : Basis {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Basis = this;
		args.append(og);
		args.append(other);
		return ref.call("basis_divide_int", args);
	}

	@:op(A += B)
	public inline function addAssign(other : Basis) : Basis {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Basis) : Basis {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Basis) : Basis {
		var thisB: Basis = this;
		this = thisB.multiply(other);
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Basis) : Basis {
		var thisB: Basis = this;
		var inv: Basis = other.inverse();
		this = thisB.multiply(inv);
		return this;
	}

	@:op(A++)
	public inline function increment() : Basis {
		this.x += Vector3.ONE;
		this.y += Vector3.ONE;
		this.z += Vector3.ONE;
		return this;
	}

	@:op(A--)
	public inline function decrement() : Basis {
		this.x -= Vector3.ONE;
		this.y -= Vector3.ONE;
		this.z -= Vector3.ONE;
		return this;
	}

	@:op(++A)
	public inline function preIncrement() : Basis {
		this.x += Vector3.ONE;
		this.y += Vector3.ONE;
		this.z += Vector3.ONE;
		return this;
	}

	@:op(--A)
	public inline function preDecrement() : Basis {
		this.x -= Vector3.ONE;
		this.y -= Vector3.ONE;
		this.z -= Vector3.ONE;
		return this;
	}
}
