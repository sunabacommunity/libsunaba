package sunaba.spatial.physics;

import sunaba.core.Dictionary;
import sunaba.core.Vector3;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeObject;
import sunaba.core.Basis;
import haxe.zip.Entry;
import Type.Type.getClass;
import Type.Type.getSuperClass;
import sunaba.core.Signal;

class RigidBody extends IPhysicsBody {
	public var angularDamp(get, set): Float;
	function get_angularDamp():Float {
		return node.native.get("angular_damp");
	}
	function set_angularDamp(value:Float):Float {
		node.native.set("angular_damp", value);
		return value;
	}

	public var angularDampMode(get, set): Int;
	function get_angularDampMode():Int {
		return node.native.get("angular_damp_mode");
	}
	function set_angularDampMode(value:Int):Int {
		node.native.set("angular_damp_mode", value);
		return value;
	}

	public var angularVelocity(get, set): Vector3;
	function get_angularVelocity():Vector3 {
		return node.native.get("angular_velocity");
	}
	function set_angularVelocity(value:Vector3):Vector3 {
		node.native.set("angular_velocity", value);
		return value;
	}

	public var canSleep(get, set): Bool;
	function get_canSleep():Bool {
		return node.native.get("can_sleep");
	}
	function set_canSleep(value:Bool):Bool {
		node.native.set("can_sleep", value);
		return value;
	}

	public var centerOfMass(get, set): Vector3;
	function get_centerOfMass():Vector3 {
		return node.native.get("center_of_mass");
	}
	function set_centerOfMass(value:Vector3):Vector3 {
		node.native.set("center_of_mass", value);
		return value;
	}

	public var centerOfMassMode(get, set): Int;
	function get_centerOfMassMode():Int {
		return node.native.get("center_of_mass");
	}
	function set_centerOfMassMode(value:Int):Int {
		node.native.set("center_of_mass", value);
		return value;
	}

	public var constantForce(get, set): Vector3;
	function get_constantForce():Vector3 {
		return node.native.get("constant_force");
	}
	function set_constantForce(value:Vector3):Vector3 {
		node.native.set("constant_force", value);
		return value;
	}

	public var constantTorque(get, set): Vector3;
	function get_constantTorque():Vector3 {
		return node.native.get("constant_torque");
	}
	function set_constantTorque(value:Vector3):Vector3 {
		node.native.set("constant_torque", value);
		return value;
	}

	public var contactMonitor(get, set): Bool;
	function get_contactMonitor():Bool {
		return node.native.get("contact_monitor");
	}
	function set_contactMonitor(value:Bool):Bool {
		node.native.set("contact_monitor", value);
		return value;
	}

	public var continuousCd(get, set): Bool;
	function get_continuousCd():Bool {
		return node.native.get("continuous_cd");
	}
	function set_continuousCd(value:Bool):Bool {
		node.native.set("continuous_cd", value);
		return value;
	}

	public var customIntegrator(get, set): Bool;
	function get_customIntegrator():Bool {
		return node.native.get("custom_integrator");
	}
	function set_customIntegrator(value:Bool):Bool {
		node.native.set("custom_integrator", value);
		return value;
	}

	public var freeze(get, set): Bool;
	function get_freeze():Bool {
		return node.native.get("freeze");
	}
	function set_freeze(value:Bool):Bool {
		node.native.set("freeze", value);
		return value;
	}

	public var freezeMode(get, set): Int;
	function get_freezeMode():Int {
		return node.native.get("freeze_mode");
	}
	function set_freezeMode(value:Int):Int {
		node.native.set("freeze_mode", value);
		return value;
	}

	public var gravityScale(get, set): Float;
	function get_gravityScale():Float {
		return node.native.get("gravity_scale");
	}
	function set_gravityScale(value:Float):Float {
		node.native.set("gravity_scale", value);
		return value;
	}

	public var inertia(get, set): Vector3;
	function get_inertia():Vector3 {
		return node.native.get("inertia");
	}
	function set_inertia(value:Vector3):Vector3 {
		node.native.set("inertia", value);
		return value;
	}

	public var linearDamp(get, set): Float;
	function get_linearDamp():Float {
		return node.native.get("linear_damp");
	}
	function set_linearDamp(value:Float):Float {
		node.native.set("linear_damp", value);
		return value;
	}

	public var linearDampMode(get, set): Int;
	function get_linearDampMode():Int {
		return node.native.get("linear_damp_mode");
	}
	function set_linearDampMode(value:Int):Int {
		node.native.set("linear_damp_mode", value);
		return value;
	}

	public var linearVelocity(get, set): Vector3;
	function get_linearVelocity():Vector3 {
		return node.native.get("linear_velocity");
	}
	function set_linearVelocity(value:Vector3):Vector3 {
		node.native.set("linear_velocity", value);
		return value;
	}

	public var lockRotation(get, set): Bool;
	function get_lockRotation():Bool {
		return node.native.get("lock_rotation");
	}
	function set_lockRotation(value:Bool):Bool {
		node.native.set("lock_rotation", value);
		return value;
	}

	public var mass(get, set): Float;
	function get_mass():Float {
		return node.native.get("mass");
	}
	function set_mass(value:Float):Float {
		node.native.set("mass", value);
		return value;
	}

	public var maxContactsReported(get, set): Int;
	function get_maxContactsReported():Int {
		return node.native.get("max_contacts_reported");
	}
	function set_maxContactsReported(value:Int):Int {
		node.native.set("max_contacts_reported", value);
		return value;
	}

	public var physicsMaterialOverride(get, set): PhysicsMaterial;
	function get_physicsMaterialOverride(): PhysicsMaterial {
		return new PhysicsMaterial(node.native.get("physics_material_override"));
	}
	function set_physicsMaterialOverride(value: PhysicsMaterial): PhysicsMaterial {
		node.native.set("physics_material_override", value.native);
		return value;
	}

	public var sleeping(get, set): Bool;
	function get_sleeping():Bool {
		return node.native.get("sleeping");
	}
	function set_sleeping(value:Bool):Bool {
		node.native.set("sleeping", value);
		return value;
	}

	public function addConstantCentralForce(force: Vector3) {
		var args = new ArrayList();
		args.append(force);
		node.native.call("add_constant_central_force", args);
	}

	public function addConstantForce(force: Vector3, ?position: Vector3) {
		var args = new ArrayList();
		args.append(force);
		if (position != null) {
			args.append(position);
		}
		node.native.call("add_constant_force", args);
	}

	public function addConstantTorque(torque: Vector3) {
		var args = new ArrayList();
		args.append(torque);
		node.native.call("add_constant_torque", args);
	}

	public function applyCentralForce(force: Vector3) {
		var args = new ArrayList();
		args.append(force);
		node.native.call("apply_central_force", args);
	}

	public function applyCentralImpulse(impulse: Vector3) {
		var args = new ArrayList();
		args.append(impulse);
		node.native.call("add_central_inpule", args);
	}

	public function applyForce(force: Vector3, ?position: Vector3) {
		var args = new ArrayList();
		args.append(force);
		if (position != null) {
			args.append(position);
		}
		node.native.call("add_force", args);
	}

	public function applyImpulse(impulse: Vector3, ?position: Vector3) {
		var args = new ArrayList();
		args.append(impulse);
		if (position != null) {
			args.append(position);
		}
		node.native.call("add_inpule", args);
	}

	public function applyTorque(torque: Vector3) {
		var args = new ArrayList();
		args.append(torque);
		node.native.call("apply_torque", args);
	}

	public function applyTorqueImpulse(impulse: Vector3) {
		var args = new ArrayList();
		args.append(impulse);
		node.native.call("apply_torque_inpule", args);
	}

	public function getCollidingBodies(): Array<Entity> {
		var collidingBodiesNative : ArrayList = node.native.call("get_colliding_bodies", new ArrayList());
		var collidingBodies: Array<Entity> = new Array();

		var getPhysBodyFromEntity: Entity->Void;
		getPhysBodyFromEntity = (entity: Entity) -> {
			var inheritsPhysicsBody: Class<Dynamic>->Bool = null;
			inheritsPhysicsBody = (bClass: Class<Dynamic>) -> {
				var superClass = std.Type.getSuperClass(bClass);
				if (superClass == IPhysicsBody) {
					return true;
				}
				else if (inheritsPhysicsBody(superClass) == true) {
					return true;
				}
				else {
					return false;
				}
			};

			var components = entity.getConponents();
			for (component in components) {
				if (inheritsPhysicsBody(std.Type.getClass(component))) {
					var physicsBody: IPhysicsBody = cast component;
					var physBodyFound: Bool = false;
					for (i in 0...collidingBodiesNative.size()) {
						var nativePhysBody: NativeObject = collidingBodiesNative.get(i);
						if (physicsBody.node.native.eq(nativePhysBody)) {
							collidingBodies.push(entity);
							physBodyFound = true;
							break;
						}
					}
					if (physBodyFound == true) {
						break;
					}
				}
			}

			for (i in 0...entity.getChildCount()) {
				var child = entity.getChild(i);
				getPhysBodyFromEntity(child);
			}
		};

		for (i in 0...scene.getEntityCount()) {
			var entity = scene.getEntity(i);
			getPhysBodyFromEntity(entity);
		}

		return collidingBodies;
	}

	public function getContactCount() {
		node.native.call("get_contact_count", new ArrayList());
	}

	public function getInverseInertiaTensor(): Basis {
		return node.native.call("get_inverse_inertia_tensor", new ArrayList());
	}

	public function setAxisVelocity(axisVelocity: Vector3) {
		var args = new ArrayList();
		args.append(axisVelocity);
		node.native.call("set_axis_velocity", new ArrayList());
	}

	public function getCollidingEntity(pNode: Node): Entity {

		var ent: Entity = null;
		var getPhysBodyFromEntity: Entity->Void;
		getPhysBodyFromEntity = (entity: Entity) -> {
			var inheritsPhysicsBody: Class<Dynamic>->Bool = null;
			inheritsPhysicsBody = (bClass: Class<Dynamic>) -> {
				var superClass = std.Type.getSuperClass(bClass);
				if (superClass == IPhysicsBody) {
					return true;
				}
				else if (inheritsPhysicsBody(superClass) == true) {
					return true;
				}
				else {
					return false;
				}
			};

			var components = entity.getConponents();
			for (component in components) {
				if (inheritsPhysicsBody(std.Type.getClass(component))) {
					var physicsBody: IPhysicsBody = cast component;
					if (physicsBody.node.native.eq(pNode.native)) {
						ent = entity;
						return;
					}
				}
			}

			for (i in 0...entity.getChildCount()) {
				var child = entity.getChild(i);
				getPhysBodyFromEntity(child);
				if (ent != null) break;
			}
		};

		for (i in 0...scene.getEntityCount()) {
			var entity = scene.getEntity(i);
			getPhysBodyFromEntity(entity);
			if (ent != null) break;
		}

		return ent;
	}

	private var _bodyEntered: Signal = null;
	public var bodyEntered(get, default): Signal;
	function get_bodyEntered():Signal {
		if (_bodyEntered == null) {
			_bodyEntered = Signal.createFromObject(node.native, "body_entered");
		}
		return _bodyEntered;
	}

	private var _bodyExited: Signal;
	public var bodyExited(get, default): Signal;
	function get_bodyExited():Signal {
		if (_bodyExited == null) {
			_bodyExited = Signal.createFromObject(node.native, "body_exited");
		}
		return _bodyExited;
	}

	private var _bodyShapeEntered: Signal;
	public var bodyShapeEntered(get, default): Signal;
	function get_bodyShapeEntered():Signal {
		if (_bodyShapeEntered == null) {
			_bodyShapeEntered = Signal.createFromObject(node.native, "body_shape_entered");
		}
		return _bodyShapeEntered;
	}

	private var _bodyShapeExited: Signal;
	public var bodyShapeExited(get, default): Signal;
	function get_bodyShapeExited():Signal {
		if (_bodyShapeExited == null) {
			_bodyShapeExited = Signal.createFromObject(node.native, "body_shape_exited");
		}
		return _bodyShapeExited;
	}

	private var _sleepingStateChanged: Signal;
	public var sleepingStateChanged(get, default): Signal;
	function get_sleepingStateChanged():Signal {
		if (_sleepingStateChanged == null) {
			_sleepingStateChanged = Signal.createFromObject(node.native, "sleeping_state_changed");
		}
		return _sleepingStateChanged;
	}

	public static function getFromNode(node: Node, scene: SceneRoot) {
		if (node.native.isClass("RigidBody3D")) {
			for (i in 0...scene.getEntityCount()) {
				var rigidBody = getFromNodeRec(node, scene.getEntity(i));
				if (rigidBody != null) {
					return rigidBody;
				}
			}
		}
		return null;
	}

	private static function getFromNodeRec(node: Node, entity: Entity) {
		var rigidBody = entity.getComponent(RigidBody);
		if (rigidBody != null) {
			if (rigidBody.node.native == node.native) {
				return rigidBody;
			}
		}

		for (i in 0...entity.getChildCount()) {
			var rigidBody = getFromNodeRec(node, entity.getChild(i));
			if (rigidBody != null) {
				return rigidBody;
			}
		}

		return null;
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("angularDamp", angularDamp);
		data.set("angularDampMode", angularDampMode);
		data.set("angularVelocity", DataUtils.varToDict(angularVelocity));
		data.set("canSleep", canSleep);
		data.set("centerOfMass", DataUtils.varToDict(centerOfMass));
		data.set("centerOfMassMode", centerOfMassMode);
		data.set("constantForce", DataUtils.varToDict(constantForce));
		data.set("constantTorque", DataUtils.varToDict(constantTorque));
		data.set("contactMonitor", contactMonitor);
		data.set("continuousCd", continuousCd);
		data.set("customIntegrator", customIntegrator);
		data.set("freeze", freeze);
		data.set("freezeMode", freezeMode);
		data.set("gravityScale", gravityScale);
		data.set("inertia", DataUtils.varToDict(inertia));
		data.set("linearDamp", linearDamp);
		data.set("linearDampMode", linearDampMode);
		data.set("linearVelocity", DataUtils.varToDict(linearVelocity));
		data.set("lockRotation", lockRotation);
		data.set("mass", mass);
		data.set("maxContactsReported", maxContactsReported);
		data.set("physicsMaterialOverride", DataUtils.varToDict(physicsMaterialOverride.native));
		data.set("sleeping", sleeping);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		angularDamp = data.get("angularDamp");
		angularDampMode = data.get("angularDampMode");
		angularVelocity = DataUtils.dictToVar(data.get("angularVelocity"));
		canSleep = data.get("canSleep");
		centerOfMass = DataUtils.dictToVar(data.get("centerOfMass"));
		centerOfMassMode = data.get("centerOfMassMode");
		constantForce = DataUtils.dictToVar(data.get("constantForce"));
		constantTorque = DataUtils.dictToVar(data.get("constantTorque"));
		contactMonitor = data.get("contactMonitor");
		continuousCd = data.get("continuousCd");
		customIntegrator = data.get("customIntegrator");
		freeze = data.get("freeze");
		freezeMode = data.get("freezeMode");
		gravityScale = data.get("gravityScale");
		inertia = DataUtils.dictToVar(data.get("inertia"));
		linearDamp = data.get("linearDamp");
		linearDampMode = data.get("linearDampMode");
		linearVelocity = DataUtils.dictToVar(data.get("linearVelocity"));
		lockRotation = data.get("lockRotation");
		mass = data.get("mass");
		maxContactsReported = data.get("maxContactsReported");
		physicsMaterialOverride = new PhysicsMaterial(DataUtils.dictToVar(data.get("physicsMaterialOverride")));
		sleeping = data.get("sleeping");
	}

	public override function onInit() {
		editorIconPath = "assets://FugueIcons/icons/sport.png";

		node = new Node(new NativeObject("RigidBody3D"));

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			transform.node = node;
		}
	}
}
