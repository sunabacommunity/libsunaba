package sunaba.spatial.physics;
import sunaba.core.Dictionary;
import sunaba.core.Variant;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.native.NativeReference;
import sunaba.core.Transform3D;

abstract class ICollisionObject extends Behavior {
	public var node: Node;

	public var collisionLayer(get, set): Int;
	function get_collisionLayer():Int {
		return node.native.get("collision_layer");
	}
	function set_collisionLayer(value:Int):Int {
		node.native.set("collision_layer", value);
		return value;
	}

	public var  collisionMask(get, set): Int;
	function get_collisionMask():Int {
		return node.native.get("collision_mask");
	}
	function set_collisionMask(value:Int):Int {
		node.native.set("collision_mask", value);
		return value;
	}

	public var collisionPriority(get, set): Float;
	function get_collisionPriority():Float {
		return node.native.get("collision_priority");
	}
	function set_collisionPriority(value:Float):Float {
		node.native.set("collision_priority", value);
		return value;
	}

	public var disableMode(get, set): Int;
	function get_disableMode():Int {
		return node.native.get("disable_mode");
	}
	function set_disableMode(value:Int):Int {
		node.native.set("disable_mode", value);
		return value;
	}

	public var inputCaptureOnDrag(get, set): Bool;
	function get_inputCaptureOnDrag():Bool {
		return node.native.get("input_capture_on_drag");
	}
	function set_inputCaptureOnDrag(value:Bool):Bool {
		node.native.set("input_capture_on_drag", value);
		return value;
	}

	public var inputRayPickable(get, set): Bool;
	function get_inputRayPickable():Bool {
		return node.native.get("input_ray_pickable");
	}
	function set_inputRayPickable(value:Bool):Bool {
		node.native.set("input_ray_pickable", value);
		return value;
	}

	public function createShapeOwner(owner: NativeObject): Int {
		var args = new ArrayList();
		args.append(owner);
		return node.native.call("create_shape_owner", args);
	}

	public function getCollisionLayerValue(layerNumber: Int): Bool {
		var args = new ArrayList();
		args.append(layerNumber);
		return node.native.call("get_collision_layer_value", args);
	}

	public function getCollisionMaskValue(layerNumber: Int): Bool {
		var args = new ArrayList();
		args.append(layerNumber);
		return node.native.call("get_collision_mask_value", args);
	}

	public function getShapeOwners(): TypedArray<Int> {
		return node.native.call("get_shape_owners", new ArrayList()).toIntArray32());
	}

	public function isShapeOwnerDisabled(ownerId: Int): Bool {
		var args = new ArrayList();
		args.append(ownerId);
		return node.native.call("is_shape_owner_disabled", args);
	}

	public function removeShapeOwner(ownerId: Int): Void {
		var args = new ArrayList();
		args.append(ownerId);
		node.native.call("remove_shape_owner", args);
	}

	public function setCollisionLayerValue(layerNumber: Int, value: Bool): Void {
		var args = new ArrayList();
		args.append(layerNumber);
		args.append(value);
		node.native.call("set_collision_layer_value", args);
	}

	public function setCollisionMaskValue(layerNumber: Int, value: Bool): Void {
		var args = new ArrayList();
		args.append(layerNumber);
		args.append(value);
		node.native.call("set_collision_mask_value", args);
	}

	public function shapeFindOwner(shapeIdx: Int): Int {
		var args = new ArrayList();
		args.append(shapeIdx);
		return node.native.call("shape_find_owner", args);
	}

	public function shapeOwnerAddShapeNative(ownerId: Int, shape: NativeReference): Void {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(shape);
		node.native.call("shape_owner_add_shape", args);
	}

	public function shapeOwnerClearShapes(ownerId: Int): Void {
		var args = new ArrayList();
		args.append(ownerId);
		node.native.call("shape_owner_clear_shapes", args);
	}

	public function shapeOwnerGetOwner(ownerId: Int): NativeObject {
		var args = new ArrayList();
		args.append(ownerId);
		return node.native.call("shape_owner_clear_shapes", args);
	}

	public function shapeOwnerGetShapeNative(ownerId: Int, shapeId: Int): NativeReference {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(shapeId);
		return node.native.call("shape_owner_get_shape", args);
	}

	public function shapeOwnerGetShapeCount(ownerId: Int): Int {
		var args = new ArrayList();
		args.append(ownerId);
		return node.native.call("shape_owner_get_shape_count", args);
	}

	public function shapeOwnerGetShapeIndex(ownerId: Int, shapeId: Int): Int {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(shapeId);
		return node.native.call("shape_owner_get_shape_index", args);
	}

	public function shapeOwnerGetTransform(ownerId: Int): Transform3D {
		var args = new ArrayList();
		args.append(ownerId);
		return node.native.call("shape_owner_get_transform", args);
	}

	public function shapeOwnerRemoveShape(ownerId: Int, shapeId: Int): Void {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(shapeId);
		node.native.call("shape_owner_remove_shape", args);
	}

	public function shapeOwnerSetDisabled(ownerId: Int, disabled: Bool): Void {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(disabled);
		node.native.call("shape_owner_set_disabled", args);
	}

	public function shapeOwnerSetTransform(ownerId: Int, transform: Transform3D): Void {
		var args = new ArrayList();
		args.append(ownerId);
		args.append(transform);
		node.native.call("shape_owner_set_transform", args);
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("collisionLayer", collisionLayer);
		data.set("collisionMask", collisionMask);
		data.set("collisionPriority", collisionPriority);
		data.set("disableMode", disableMode);
		data.set("inputCaptureOnDrag", inputCaptureOnDrag);
		data.set("inputRayPickable", inputRayPickable);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		collisionLayer = data.get("collisionLayer");
		collisionMask = data.get("collisionMask");
		collisionPriority = data.get("collisionPriority");
		disableMode = data.get("disableMode");
		inputCaptureOnDrag = data.get("inputCaptureOnDrag");
		inputRayPickable = data.get("inputRayPickable");
	}
}
