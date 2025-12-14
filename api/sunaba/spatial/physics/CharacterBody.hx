package sunaba.spatial.physics;
import sunaba.core.Dictionary;
import sunaba.core.Vector3;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeObject;

class CharacterBody extends IPhysicsBody {
    public var floorBlockOnWall(get, set): Bool;
    function get_floorBlockOnWall(): Bool {
        return node.native.get("floor_block_on_wall");
    }
    function set_floorBlockOnWall(value: Bool): Bool {
        node.native.set("floor_block_on_wall", value);
        return value;
    }

	public var floorConstantSpeed(get, set): Bool;
	function get_floorConstantSpeed():Bool {
		return node.native.get("floor_constant_speed");
	}
	function set_floorConstantSpeed(value:Bool):Bool {
		node.native.set("floor_constant_speed", value);
		return value;
	}

	public var floorMaxAngle(get, set): Float;
	function get_floorMaxAngle():Float {
		return node.native.get("floor_max_angle");
	}
	function set_floorMaxAngle(value:Float):Float {
		node.native.set("floor_max_angle", value);
		return value;
	}

	public var floorSnapLength(get, set): Float;

	function get_floorSnapLength():Float {
		return node.native.get("floor_snap_length");
	}
	function set_floorSnapLength(value:Float):Float {
		node.native.set("floor_snap_length", value);
		return value;
	}

	public var floorStopOnSlope(get, set): Bool;
	function get_floorStopOnSlope():Bool {
		return node.native.get("floor_stop_on_slope");
	}
	function set_floorStopOnSlope(value:Bool):Bool {
		node.native.set("floor_stop_on_slope", value);
		return value;
	}

	public var maxSlides(get, set): Int;
	function get_maxSlides():Int {
		return node.native.get("max_slides");
	}
	function set_maxSlides(value:Int):Int {
		node.native.set("max_slides", value);
		return value;
	}

	public var motionMode(get, set): Int;
	function get_motionMode():Int {
		return node.native.get("motion_mode");
	}
	function set_motionMode(value:Int):Int {
		node.native.set("motion_mode", value);
		return value;
	}

	public var platformFloorLayers(get, set): Int;
	function get_platformFloorLayers():Int {
		return node.native.get("platform_floor_layers");
	}
	function set_platformFloorLayers(value:Int):Int {
		node.native.set("platform_floor_layers", value);
		return value;
	}

	public var platformOnLeave(get, set): Int;
	function get_platformOnLeave():Int {
		return node.native.get("platform_on_leave");
	}
	function set_platformOnLeave(value:Int):Int {
		node.native.set("platform_on_leave", value);
		return value;
	}

	public var platformWallLayers(get, set): Int;
	function get_platformWallLayers():Int {
		return node.native.get("platform_wall_layers");
	}
	function set_platformWallLayers(value:Int):Int {
		node.native.set("platform_wall_layers", value);
		return value;
	}

	public var safeMargin(get, set): Float;
	function get_safeMargin():Float {
		return node.native.get("safe_margin");
	}
	function set_safeMargin(value:Float):Float {
		node.native.set("safe_margin", value);
		return value;
	}

	public var slideOnCeiling(get, set): Bool;
	function get_slideOnCeiling():Bool {
		return node.native.get("slide_on_ceiling");
	}
	function set_slideOnCeiling(value:Bool):Bool {
		node.native.set("slide_on_ceiling", value);
		return value;
	}

	public var upDirection(get, set): Vector3;
	function get_upDirection():Vector3 {
		return node.native.get("up_direction");
	}
	function set_upDirection(value:Vector3):Vector3 {
		node.native.set("up_direction", value);
		return value;
	}

	public var velocity(get, set): Vector3;
	function get_velocity():Vector3 {
		return node.native.get("velocity");
	}
	function set_velocity(value:Vector3):Vector3 {
		node.native.set("velocity", value);
		return value;
	}

	public var wallMinSlideAngle(get, set): Float;
	function get_wallMinSlideAngle():Float {
		return node.native.get("wall_min_slide_angle");
	}
	function set_wallMinSlideAngle(value:Float):Float {
		node.native.set("wall_min_slide_angle", value);
		return value;
	}

	public function applyFloorSnap() {
		node.native.call("apply_floor_snap", new ArrayList());
	}

	public function getFloorAngle(?upDirection: Vector3): Float {
		var args = new ArrayList();
		args.append(upDirection);
		return node.native.call("get_floor_angle", args);
	}

	public function getFloorNormal(): Vector3 {
		return node.native.call("get_floor_normal", new ArrayList());
	}

	public function getLastMotion(): Vector3 {
		return node.native.call("get_last_motion", new ArrayList());
	}

	public function getLastSlideCollision(): KinematicCollision3D {
		return new KinematicCollision3D(node.native.call("get_last_slide_collision", new ArrayList()));
	}

	public function getPlatformAngularVelocity(): Vector3 {
		return node.native.call("get_platform_angular_velocity", new ArrayList());
	}

	public function getPlatformVelocity(): Vector3 {
		return node.native.call("get_platform_velocity", new ArrayList());
	}

	public function getPositionDelta(): Vector3 {
		return node.native.call("get_platform_velocity", new ArrayList());
	}

	public function getRealVelocity(): Vector3 {
		return node.native.call("get_real_velocity", new ArrayList());
	}

	public function getSlideCollision(slideIdx: Int): KinematicCollision3D {
		var args = new ArrayList();
		args.append(slideIdx);
		return new KinematicCollision3D(node.native.call("get_slide_collision", args));
	}

	public function getSlideCollisionCount(): Int {
		return node.native.call("get_slide_collision_count", new ArrayList());
	}

	public function getWallNormal(): Vector3 {
		return node.native.call("get_wall_normal", new ArrayList());
	}

	public function isOnCeiling(): Bool {
		return node.native.call("is_on_ceiling", new ArrayList());
	}

	public function isOnCeilingOnly(): Bool {
		return node.native.call("is_on_ceiling_only", new ArrayList());
	}

	public function isOnFloor(): Bool {
		return node.native.call("is_on_floor", new ArrayList());
	}

	public function isOnFloorOnly(): Bool {
		return node.native.call("is_on_floor_only", new ArrayList());
	}

	public function isOnWall(): Bool {
		return node.native.call("is_on_wall", new ArrayList());
	}

	public function isOnWallOnly(): Bool {
		return node.native.call("is_on_wall_only", new ArrayList());
	}

	public function moveAndSlide(): Bool {
		return node.native.call("move_and_slide", new ArrayList());
	}

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("floorBlockOnWall", floorBlockOnWall);
        data.set("floorConstantSpeed", floorConstantSpeed);
        data.set("floorMaxAngle", floorMaxAngle);
        data.set("floorSnapLength", floorSnapLength);
        data.set("floorStopOnSlope", floorStopOnSlope);
        data.set("maxSlides", maxSlides);
        data.set("motionMode", motionMode);
        data.set("platformFloorLayers", platformFloorLayers);
        data.set("platformOnLeave", platformOnLeave);
        data.set("platformWallLayers", platformWallLayers);
        data.set("safeMargin", safeMargin);
        data.set("slideOnCeiling", slideOnCeiling);
        data.set("upDirection", DataUtils.varToDict(upDirection));
        data.set("velocity", DataUtils.varToDict(velocity));
        data.set("wallMinSlideAngle", wallMinSlideAngle);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        floorBlockOnWall = data.get("floorBlockOnWall");
        floorConstantSpeed = data.get("floorConstantSpeed");
        floorMaxAngle = data.get("floorMaxAngle");
        floorSnapLength = data.get("floorSnapLength");
        floorStopOnSlope = data.get("floorStopOnSlope");
        maxSlides = data.get("maxSlides");
        motionMode = data.get("motionMode");
        platformFloorLayers = data.get("platformFloorLayers");
        platformOnLeave = data.get("platformOnLeave");
        platformWallLayers = data.get("platformWallLayers");
        safeMargin = data.get("safeMargin");
        slideOnCeiling = data.get("slideOnCeiling");
        upDirection = DataUtils.dictToVar(data.get("upDirection"));
        velocity = DataUtils.dictToVar(data.get("velocity"));
        wallMinSlideAngle = data.get("wallMinSlideAngle");
    }

    public override function onInit() {
        editorIconPath = "assets://FugueIcons/icons/building.png";

        node = new Node(new NativeObject("CharacterBody3D"));

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			transform.node = node;
		}
    }
}
