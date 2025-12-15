package sunaba.spatial.physics;

import sunaba.core.Dictionary;
import sunaba.core.Transform3D;
import sunaba.core.Vector3;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;

abstract class IPhysicsBody extends ICollisionObject {
    public var axisLockAngularX(get, set): Bool;
    function get_axisLockAngularX():Bool {
		return node.native.get("axis_lock_angular_x");
	}
    function set_axisLockAngularX(value:Bool):Bool {
        node.native.set("axis_lock_angular_x", value);
        return value;
    }

    public var axisLockAngularY(get, set): Bool;
    function get_axisLockAngularY():Bool {
		return node.native.get("axis_lock_angular_y");
	}
    function set_axisLockAngularY(value:Bool):Bool {
        node.native.set("axis_lock_angular_y", value);
        return value;
    }

    public var axisLockAngularZ(get, set): Bool;
    function get_axisLockAngularZ():Bool {
		return node.native.get("axis_lock_angular_z");
	}
    function set_axisLockAngularZ(value:Bool):Bool {
        node.native.set("axis_lock_angular_z", value);
        return value;
    }

    public var axisLockLinearX(get, set): Bool;
    function get_axisLockLinearX(): Bool {
        return node.native.get("axis_lock_linear_x");
    }
    function set_axisLockLinearX(value: Bool): Bool {
        node.native.set("axis_lock_linear_x", value);
        return value;
    }

    public var axisLockLinearY(get, set): Bool;
    function get_axisLockLinearY(): Bool {
        return node.native.get("axis_lock_linear_y");
    }
    function set_axisLockLinearY(value: Bool): Bool {
        node.native.set("axis_lock_linear_y", value);
        return value;
    }

    public var axisLockLinearZ(get, set): Bool;
    function get_axisLockLinearZ(): Bool {
        return node.native.get("axis_lock_linear_z");
    }
    function set_axisLockLinearZ(value: Bool): Bool {
        node.native.set("axis_lock_linear_z", value);
        return value;
    }

    public function addCollisionExceptionWith(body: IPhysicsBody) {
        var args = new ArrayList();
        args.append(body.node);
        node.native.call("add_collision_exception_with", args);
    }

    public function getAxisLock(axis: Int): Bool {
        var args = new ArrayList();
        args.append(axis);
        return node.native.call("get_axis_lock", args);
    }

    public function getCollisionExceptions(): Array<IPhysicsBody> {
        var nativeArr : ArrayList = node.native.call("get_collision_exceptions", new ArrayList());
        var collisionExceptions: Array<IPhysicsBody> = new Array();
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
                    for (i in 0...nativeArr.size()) {
                        var nativePhysBody: NativeObject = nativeArr.get(i);
                        if (physicsBody.node.native.eq(nativePhysBody)) {
                            collisionExceptions.push(physicsBody);
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

        return collisionExceptions;
    }

    public function getGravity() {
        return node.native.call("get_gravity", new ArrayList());
    }

    public function moveAndCollide(motion: Vector3, testOnly: Bool = false, safeMargin: Float = 0.001, recoveryAsCollision: Bool = false, maxCollisions: Int = 1): KinematicCollision3D {
        var args = new ArrayList();
        args.append(motion);
        args.append(testOnly);
        args.append(safeMargin);
        args.append(recoveryAsCollision);
        args.append(maxCollisions);
        return new KinematicCollision3D(node.native.call("move_and_collide", args));
    }

    public function removeCollisionExceptionWith(body: IPhysicsBody) {
        var args = new ArrayList();
        args.append(body.node);
        node.native.call("remove_collision_exception_with", args);
    }

    public function setAxisLock(axis: Int, lock: Bool) {
        var args = new ArrayList();
        args.append(axis);
        args.append(lock);
        node.native.call("set_axis_lock", args);
    }

    public function testMove(from: Transform3D, motion: Vector3, ?collision: KinematicCollision3D, safeMargin: Float = 0.001, recoveryAsCollision: Bool = false, maxCollisions: Int = 1): Bool {
        var args = new ArrayList();
        args.append(from);
        args.append(motion);
        if (collision != null) {
            args.append(collision.native);
        }
        args.append(safeMargin);
        args.append(recoveryAsCollision);
        args.append(maxCollisions);
        return node.native.call("test_move", args);
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("axisLockAngularX", axisLockAngularX);
        data.set("axisLockAngularY", axisLockAngularY);
        data.set("axisLockAngularZ", axisLockAngularZ);
        data.set("axisLockLinearX", axisLockLinearX);
        data.set("axisLockLinearY", axisLockLinearY);
        data.set("axisLockLinearZ", axisLockLinearZ);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        axisLockAngularX = data.get("axisLockAngularX");
        axisLockAngularY = data.get("axisLockAngularY");
        axisLockAngularZ = data.get("axisLockAngularZ");
        axisLockLinearX = data.get("axisLockLinearX");
        axisLockLinearY = data.get("axisLockLinearY");
        axisLockLinearZ = data.get("axisLockLinearZ");
    }
}
