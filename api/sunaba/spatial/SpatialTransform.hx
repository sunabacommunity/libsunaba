package sunaba.spatial;

import sunaba.core.Basis;
import sunaba.core.Vector3;
import sunaba.core.Quaternion;
import sunaba.core.Transform3D;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;

class SpatialTransform extends Behavior {
	private var _node: Node;
	public var node(get, set): Node;
	function get_node():Node {
		return _node;
	}
	function set_node(value:Node):Node {
		if (value == null) {
			throw "Value cannot be null";
		}
		else if (value.native.isNull()) {
			throw "Value cannot be null";
		}
		else {
			if (!value.native.isClass("Node3D")) {
				throw "Node must be 'Node3D'";
			}

			var oldNode = _node;
			_node = value;
			if (entity != null) {
				entity.node = value;
			}

			if (oldNode != null) {
				if (!oldNode.native.isNull()) {
					var tf: Transform3D = oldNode.native.get("transform");
					value.native.set("transform", tf);

					for (i in 0...oldNode.getChildCount()) {
						var child: Node = oldNode.getChild(i);
						oldNode.removeChild(child);
						value.addChild(child);
					}
					oldNode.queueFree();
				}
			}
		}
		return value;
	}

	public var basis(get, set): Basis;
	function get_basis():Basis {
		return node.native.get("basis");
	}
	function set_basis(value:Basis):Basis {
		node.native.set("basis", value);
		return value;
	}

	public var position(get, set): Vector3;
	function get_position():Vector3 {
		return node.native.get("position");
	}
	function set_position(value:Vector3):Vector3 {
		node.native.set("position", value);
		return value;
	}

	public var rotationDegrees(get, set): Vector3;
	function get_rotationDegrees():Vector3 {
		return node.native.get("rotation_degrees");
	}
	function set_rotationDegrees(value:Vector3):Vector3 {
		node.native.set("rotation_degrees", value);
		return value;
	}

	public var rotation(get, set): Vector3;
	function get_rotation():Vector3 {
		return node.native.get("rotation");
	}
	function set_rotation(value:Vector3):Vector3 {
		node.native.set("rotation", value);
		return value;
	}

	public var scale(get, set): Vector3;
	function get_scale():Vector3 {
		return node.native.get("scale");
	}
	function set_scale(value:Vector3):Vector3 {
		node.native.set("scale", value);
		return value;
	}

	public var quaternion(get, set): Quaternion;
	function get_quaternion():Quaternion {
		return node.native.get("quaternion");
	}
	function set_quaternion(value:Quaternion):Quaternion {
		node.native.set("quaternion", value);
		return value;
	}

	public var rotationOrder(get, set): Int;
	function get_rotationOrder():Int {
		return node.native.get("rotation_order");
	}
	function set_rotationOrder(value:Int):Int {
		node.native.set("rotation_order", value);
		return value;
	}

	public var transform(get, set): Transform3D;
	function get_transform():Transform3D {
		return node.native.get("transform");
	}
	function set_transform(value:Transform3D):Transform3D {
		node.native.set("transform", value);
		return value;
	}

	public var globalPosition(get, set): Vector3;
	function get_globalPosition():Vector3 {
		return node.native.get("global_position");
	}
	function set_globalPosition(value:Vector3):Vector3 {
		node.native.set("global_position", value);
		return value;
	}

	public var globalRotation(get, set): Vector3;
	function get_globalRotation():Vector3 {
		return node.native.get("global_rotation");
	}
	function set_globalRotation(value:Vector3):Vector3 {
		node.native.set("global_rotation", value);
		return value;
	}

	public var globalRotationDegrees(get, set): Int;
	function get_globalRotationDegrees():Int {
		return node.native.get("global_rotation_degrees");
	}
	function set_globalRotationDegrees(value:Int):Int {
		node.native.set("global_rotation_degrees", value);
		return value;
	}

	public var globalBasis(get, set): Basis;
	function get_globalBasis():Basis {
		return node.native.get("global_basis");
	}
	function set_globalBasis(value:Basis):Basis {
		node.native.set("global_basis", value);
		return value;
	}

	public var globalTransform(get, set): Transform3D;
	function get_globalTransform():Transform3D {
		return node.native.get("global_transform");
	}
	function set_globalTransform(value:Transform3D):Transform3D {
		node.native.set("global_transform", value);
		return value;
	}

	public function isTopLevel(): Bool {
		return node.native.call("is_top_level", new ArrayList());
	}

	public function forceUpdate() {
		node.native.call("force_update_transform", new ArrayList());
	}

	public function getParentTransform(): Null<SpatialTransform> {
		var parentEntity = entity.parent;
		if (parentEntity != null) {
			var parentTransform: SpatialTransform = parentEntity.getComponent(SpatialTransform);
			if (parentEntity != null) {
				return parentTransform;
			}
		}
		return null;
	}

	public function globalRotate(axis: Vector3, angle: Float) {
		var args = new ArrayList();
		args.append(axis);
		args.append(angle);
		node.native.call("global_rotate", args);
	}

	public function globalTranslate(offset: Vector3) {
		var args = new ArrayList();
		args.append(offset);
		node.native.call("global_translate", args);
	}

	public function globalScale(scale: Vector3) {
		var args = new ArrayList();
		args.append(scale);
		node.native.call("global_scale", args);
	}

	public function hide() {
		node.native.call("hide", new ArrayList());
	}

	public function isScaleDisabled(): Bool {
		return node.native.call("is_scale_disabled", new ArrayList());
	}

	public function isVisibleInTree(): Bool {
		return node.native.call("is_visible_in_tree", new ArrayList());
	}

	public function lookAt(target: Vector3, ?up: Vector3, ?useModelFront: Bool) {
		var args = new ArrayList();
		args.append(target);
		if (up != null) {
			args.append(up);
		}
		if (useModelFront != null) {
			args.append(useModelFront);
		}
		node.native.call("look_at", args);
	}

	public function lookAtFromPosition(position: Vector3, target: Vector3, ?up: Vector3, ?useModelFront: Bool) {
		var args = new ArrayList();
		args.append(position);
		args.append(target);
		if (up != null) {
			args.append(up);
		}
		if (useModelFront != null) {
			args.append(useModelFront);
		}
		node.native.call("look_at_from_position", args);
	}

	public function orthonormalize() {
		node.native.call("orthonormalize", new ArrayList());
	}

	public function rotate(axis: Vector3, angle: Float) {
		var args = new ArrayList();
		args.append(axis);
		args.append(angle);
		node.native.call("rotate", args);
	}

	public function rotateObjectLocal(axis: Vector3, angle: Float) {
		var args = new ArrayList();
		args.append(axis);
		args.append(angle);
		node.native.call("rotate_object_local", args);
	}

	public function rotateX(angle: Float) {
		var args = new ArrayList();
		args.append(angle);
		node.native.call("rotate_x", args);
	}

	public function rotateY(angle: Float) {
		var args = new ArrayList();
		args.append(angle);
		node.native.call("rotate_y", args);
	}

	public function rotateZ(angle: Float) {
		var args = new ArrayList();
		args.append(angle);
		node.native.call("rotate_z", args);
	}

	public function scaleObjectLocal(scale: Vector3) {
		var args = new ArrayList();
		args.append(scale);
		node.native.call("scale_object_local", args);
	}

	public function setDisableScale(disable: Bool) {
		var args = new ArrayList();
		args.append(disable);
		node.native.call("set_disable_scale", args);
	}

	public function setIdentity() {
		node.native.call("set_identity", new ArrayList());
	}

	public function show() {
		node.native.call("show", new ArrayList());
	}

	public function toGlobal(local: Vector3): Vector3 {
		var args = new ArrayList();
		args.append(local);
		return node.native.call("to_global", args);
	}

	public function toLocal(global: Vector3): Vector3 {
		var args = new ArrayList();
		args.append(global);
		return node.native.call("to_local", args);
	}

	public function translate(offset: Vector3) {
		var args = new ArrayList();
		args.append(offset);
		node.native.call("translate", args);
	}

	public override function getData(): Dictionary {
		var data = new Dictionary();
		data.set("position", DataUtils.varToDict(position));
		data.set("rotation", DataUtils.varToDict(rotation));
		data.set("scale", DataUtils.varToDict(scale));
		return data;
	}

	public override function setData(data: Dictionary) {
		Sys.println(JSON.stringify(data, "  "));
		position = DataUtils.dictToVar(data.get("position"), scene.io);
		rotation = DataUtils.dictToVar(data.get("rotation"));
		scale = DataUtils.dictToVar(data.get("scale"));
	}

	public override function onInit() {
		editorIconPath = "studio://icons/16/ruler-crop.png";

		node = new Node(new NativeObject("Node3D"));
	}

	public override function onEnd() {
		entity.node = null;
	}
}
