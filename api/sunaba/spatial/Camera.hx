package sunaba.spatial;
import sunaba.core.Vector2;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.TypedArray;
import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;

class Camera extends Behavior {
	private var _node: Node;

	public var node(get, default): Node;
	function get_node():Node {
		return _node;
	}

	public var cullMask(get, set): Int;
	function get_cullMask():Int {
		return node.native.get("cull_mask");
	}
	function set_cullMask(value:Int):Int {
		node.native.set("cull_mask", value);
		return value;
	}

	public var current(get, set): Bool;
	function get_current():Bool {
		return node.native.get("current");
	}
	function set_current(value:Bool):Bool {
		node.native.set("current", value);
		return value;
	}

	public var dopplerTracking(get, set): Int;
	function get_dopplerTracking():Int {
		return node.native.get("doppler_tracking");
	}
	function set_dopplerTracking(value:Int):Int {
		node.native.set("doppler_tracking", value);
		return value;
	}

	public var far(get, set): Float;
	function get_far():Float {
		return node.native.get("far");
	}
	function set_far(value:Float):Float {
		node.native.set("far", value);
		return value;
	}

	public var fov(get, set): Float;
	function get_fov():Float {
		return node.native.get("fov");
	}
	function set_fov(value:Float):Float {
		node.native.set("fov", value);
		return value;
	}

	public var frustumOffset(get, set): Vector2;
	function get_frustumOffset():Vector2 {
		return node.native.get("frustum_offset");
	}
	function set_frustumOffset(value:Vector2):Vector2 {
		node.native.set("frustum_offset", value);
		return value;
	}

	public var hOffset(get, set): Float;
	function get_hOffset():Float {
		return node.native.get("h_offset");
	}
	function set_hOffset(value:Float):Float {
		node.native.set("h_offset", value);
		return value;
	}

	public var keepAspect(get, set): Float;
	function get_keepAspect():Float {
		return node.native.get("keep_aspect");
	}
	function set_keepAspect(value:Float):Float {
		node.native.set("keep_aspect", value);
		return value;
	}

	public var near(get, set): Float;
	function get_near():Float {
		return node.native.get("near");
	}
	function set_near(value:Float):Float {
		node.native.set("near", value);
		return value;
	}

	public var projection(get, set): Int;
	function get_projection():Int {
		return node.native.get("projection");
	}
	function set_projection(value:Int):Int {
		node.native.set("projection", value);
		return value;
	}

	public var size(get, set): Float;
	function get_size():Float {
		return node.native.get("size");
	}
	function set_size(value:Float):Float {
		node.native.set("size", value);
		return value;
	}

	public var vOffset(get, set): Float;
	function get_vOffset():Float {
		return node.native.get("v_offset");
	}
	function set_vOffset(value:Float):Float {
		node.native.set("v_offset", value);
		return value;
	}

	public function clearCurrent(): Void {
		node.native.call("clear_current", new ArrayList());
	}

	public function getCullMaskValue(index: Int): Bool {
		var args = new ArrayList();
		args.append(index);
		return  node.native.call("get_cull_mask_value", args);
	}

	public function getFrustum(): TypedArray<Planes> {
		return node.native.call("get_frustum", new ArrayList());
	}

	public function isPositionBehind(position: Vector3): Bool {
		var args = new ArrayList();
		args.append(position);
		return node.native.call("is_position_behind", args);
	}

	public function makeCurrent() : Void {
		node.native.call("make_current", new ArrayList());
	}

	public function projectLocalRayNormal(screenPoint: Vector2): Vector3 {
		var args = new ArrayList();
		args.append(screenPoint);
		return node.native.call("project_local_ray_normal", args);
	}

	public function projectPosition(screenPoint: Vector2, zDepth: Float): Vector3 {
		var args = new ArrayList();
		args.append(screenPoint);
		args.append(zDepth);
		return node.native.call("project_position", args);
	}

	public function projectRayNormal(screenPoint: Vector2): Vector3 {
		var args = new ArrayList();
		args.append(screenPoint);
		return node.native.call("project_ray_normal", args);
	}

	public function projectRayOrigin(screenPoint: Vector2): Vector3 {
		var args = new ArrayList();
		args.append(screenPoint);
		return node.native.call("project_ray_origin", args);
	}

	public function setCullMaskValue(index: Int, value: Bool): Void {
		var args = new ArrayList();
		args.append(index);
		args.append(value);
		node.native.call("set_cull_mask_value", args);
	}

	public function setFrustum(size: Float, offset: Vector2, zNear: Float, zFar: Float): Void {
		var args = new ArrayList();
		args.append(size);
		args.append(offset);
		args.append(zNear);
		args.append(zFar);
		node.native.call("set_frustum", args);
	}

	public function setOrthagonal(size: Float, zNear: Float, zFar: Float): Void {
		var args = new ArrayList();
		args.append(size);
		args.append(zNear);
		args.append(zFar);
		node.native.call("set_orthagonal", args);
	}

	public function setPerspective(fov: Float, zNear: Float, zFar: Float): Void {
		var args = new ArrayList();
		args.append(fov);
		args.append(zNear);
		args.append(zFar);
		node.native.call("set_perspective", args);
	}

	public function unprojectPosition(position: Vector3): Vector2 {
		var args = new ArrayList();
		args.append(position);
		return node.native.call("unproject_position", args);
	}

	public override function getData(): Dictionary {
		var data = new Dictionary();

		data.set("cullMask", cullMask);
		data.set("current", current);
		data.set("dopplerTracking", dopplerTracking);
		data.set("far", far);
		data.set("fov", fov);
		data.set("frustumOffset", DataUtils.varToDict(frustumOffset));
		data.set("hOffset", hOffset);
		data.set("keepAspect", keepAspect);
		data.set("near", near);
		data.set("projection", projection);
		data.set("size", size);
		data.set("vOffset", vOffset);

		return data;
	}

	public override function setData(data: Dictionary) {
		cullMask = data.get("cullMask");
		current = data.get("current");
		dopplerTracking = data.get("dopplerTracking");
		far = data.get("far");
		fov = data.get("fov");
		frustumOffset = DataUtils.dictToVar(data.get("frustumOffset"));
		hOffset = data.get("hOffset");
		keepAspect = data.get("keepAspect");
		near = data.get("near");
		projection = data.get("projection");
		size = data.get("size");
		vOffset = data.get("vOffset");
	}

	public override function onInit() {
		editorIconPath = "studio://icons/16/camera-lens.png";
		_node = new Node(new NativeObject("Camera3D"));
		node.name = "Camera";
	}

	public override function onStart() {
		var trasnform: SpatialTransform = getComponent(SpatialTransform);
		if (trasnform != null) {
			trasnform.node.addChild(node);
		}
	}

	public override function onEnd() {
		if (node != null) {
			if (!node.isNull()) {
				if (!node.native.isNull()) {
					node.queueFree();
					_node = null;
				}
			}
		}
	}
}
