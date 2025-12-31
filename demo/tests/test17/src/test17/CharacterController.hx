package test17;

import sunaba.spatial.physics.RigidBody;
import sunaba.spatial.Camera;
import sunaba.Entity;
import sunaba.MouseMode;
import sunaba.input.InputEventMouseMotion;
import sunaba.spatial.physics.CharacterBody;
import sunaba.spatial.SpatialTransform;
import sunaba.core.Vector3;
import sys.ssl.Key;
import sunaba.MouseModeEnum;
import sunaba.input.InputService;
import sunaba.input.InputMapService;
import sunaba.Key;
import sunaba.input.InputEventKey;
import sunaba.core.Reference;
import sunaba.input.InputEvent;
import sunaba.Behavior;

class CharacterController extends Behavior {
    public var speed: Float;

    public var defaultSpeed: Float;
    public var sprintSpeed: Float;
    public var crouchSpeed: Float;
    public var acceleration: Float;
    public var friction: Float;
    public var airFriction: Float;
    public var jumpImpulse: Float;
    public var gravity: Float;

    public var mouseSensitivity: Float;
    public var controllerSensitivity: Float;

    public var snapVector: Vector3;

    public var timesJumped: Int;

    public var isStarted: Bool;
    public var _isActive: Bool;
    public var isActive(get, set): Bool;
    function get_isActive() {
        return _isActive;
    }
    function set_isActive(value: Bool) {
        _isActive = value;
        if (value == true) {
            InputService.mouseMode = MouseMode.captured;
            startCharacter();
        }
        else {
            InputService.mouseMode = MouseMode.visible;
        }

        return value;
    }

    public var transform : SpatialTransform;
    public var body: CharacterBody;

    var cameraEntity: Entity;
    var cameraTransform: SpatialTransform;
    var camera: Camera;

    public override function onInit() {
        speed = defaultSpeed;
        defaultSpeed = 5.0;
        sprintSpeed = 7.0;
        crouchSpeed = 1.0;
        acceleration = 60.0;
        friction = 50.0;
        airFriction = 10.0;
        jumpImpulse = 20.0;
        gravity = -40.0;

        mouseSensitivity = 1.0;
        controllerSensitivity = 30.0;

        snapVector = new Vector3(0, 0, 0);

        timesJumped = 0;

        isStarted = false;
        
    }

    public override function onStart() {
        transform = getComponent(SpatialTransform);
        body = getComponent(CharacterBody);

        cameraEntity = entity.find("Camera");
        cameraTransform = cameraEntity.getComponent(SpatialTransform);
        camera = cameraEntity.getComponent(Camera);

        InputMapService.addAction("moveForward");
        InputMapService.addAction("moveBackward");
        InputMapService.addAction("moveLeft");
        InputMapService.addAction("moveRight");
        InputMapService.addAction("jump");
        InputMapService.addAction("sprint");
        InputMapService.addAction("crouch");
        InputMapService.addAction("pause");

        if (!scene.isInEditor) {
            _isActive = true;
            startCharacter();
        }
    }

    public function startCharacter() {
        if (isStarted) return;
        if (!isActive) return;

        isStarted = true;

        InputService.mouseMode = MouseMode.captured;
    }

    public override function onUnhandledInput(event:InputEvent) {
        
        if (event.native.isClass("InputEventKey")) {
            var keyEvent = Reference.castTo(event, InputEventKey);
            if (keyEvent.keycode == Key.w) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("moveForward");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("moveForward");
                }
            }
            if (keyEvent.keycode == Key.s) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("moveBackward");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("moveBackward");
                }
            }
            if (keyEvent.keycode == Key.a) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("moveLeft");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("moveLeft");
                }
            }
            if (keyEvent.keycode == Key.d) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("moveRight");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("moveRight");
                }
            }
            if (keyEvent.keycode == Key.space) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("jump");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("jump");
                }
            }
            if (keyEvent.keycode == Key.escape) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("pause");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("pause");
                }
            }
        }
    }

    public override function onInput(event:InputEvent) {
        if (event.native.isClass("InputEventMouseMotion")) {
            var eventMouseMoution = Reference.castTo(event, InputEventMouseMotion);
            if (InputService.mouseMode == MouseMode.captured) {
                var mouseAxis = eventMouseMoution.relative;
                var newRotation = transform.rotation;
                newRotation.y -= mouseAxis.x * mouseSensitivity *  0.001;
                transform.rotation = newRotation;
                var newCameraRotation = cameraTransform.rotation;
                newCameraRotation.x = Clamp(newCameraRotation.x - mouseAxis.y * mouseSensitivity * 0.001, -1.5, 1.5);
                cameraTransform.rotation = newCameraRotation;
            }
        }
    }

    public override function onUpdate(deltaTime:Float) {
        if (isActive) {
            if (camera != null) {
                camera.current = true;
            }
        }

        if (InputService.isActionJustPressed("pause")) {
            isActive = !isActive;
        }
    }

    public override function onPhysicsUpdate(deltaTime:Float) {
        if (isActive) {
            speed = defaultSpeed;
            var inputVector = getInputVector();
            var direction = getDirection(inputVector);
            //trace(direction.x);
            //trace(direction.z);
            jump();

            applyMovement(direction, deltaTime);
            applyGravity(deltaTime);
            applyFriction(direction, deltaTime);
            applyControllerRotation();
            
            body.upDirection = new Vector3(0, 1, 0);
            body.floorStopOnSlope = true;
            body.maxSlides = 4;
            body.floorMaxAngle = 0.7853;
            body.moveAndSlide();
            //processCollisions();
        }
    }

    inline function processCollisions() {
        for (i in 0...body.getSlideCollisionCount()) {
            var collision = body.getSlideCollision(i);
            if (collision.isNull())
                continue;
            for (j in 0...collision.getCollisionCount()) {
                var bodyNode = collision.getCollider(j);
                if (bodyNode.isNull()) continue;
                var rigidBody = RigidBody.getFromNode(bodyNode, scene);
                if (rigidBody == null) {
                    continue;
                }

                var collisionPosition = collision.getPosition();
                var bodyGlobalPosition = transform.globalPosition;
                var point = collisionPosition - bodyGlobalPosition;

                var force = 5.0;

                var collisionNormal = collision.getNormal(k);
                var negativeCollisionNormal = new Vector3(-collisionNormal.x, -collisionNormal.y, -collisionNormal.z);
                if (rigidBody.applyImpulse == null)
                    continue;
                rigidBody.applyImpulse(negativeCollisionNormal * force, point); 
            }
        }
    }

    inline function Clamp<T:Float>(value:T, min:T, max:T):T {
		return if (value < min) min else if (value > max) max else value;
	}

    inline function getInputVector() {
        var inputVector = new Vector3();
        inputVector.x = InputService.getActionStrength("moveRight") - InputService.getActionStrength("moveLeft");
        inputVector.z = InputService.getActionStrength("moveBackward") - InputService.getActionStrength("moveForward");
        return inputVector;
    }

    inline function getDirection(inputVector: Vector3) {
        var direction = new Vector3();
        direction = (transform.basis.x * inputVector.x) + (transform.basis.z * inputVector.z);
        return direction;
    }

    inline function applyMovement(direction: Vector3, deltaTime: Float) {
        if (direction != Vector3.zero()) {
            var velocity = body.velocity;
            var newVelocity = velocity.moveToward(direction * speed, acceleration * deltaTime);
            velocity.x = newVelocity.x;
            velocity.z = newVelocity.z;
            //trace(velocity);
            body.velocity = velocity;
        }
    }

    inline function applyFriction(direction: Vector3, deltaTime: Float) {
        if (direction == Vector3.zero()) {
            var velocity = body.velocity;
            if (body.isOnFloor()) {
                velocity = velocity.moveToward(Vector3.zero(), friction * deltaTime);
            }
            else {
                var newVelocity = velocity.moveToward(direction * speed, airFriction * deltaTime);
                velocity.x = newVelocity.x;
                velocity.z = newVelocity.z;
            }
            //trace(velocity);
            body.velocity = velocity;
        }
    }

    inline function applyGravity(deltTime: Float) {
        var velocity = body.velocity;
        velocity.y += gravity * deltTime;
        velocity.y = Clamp(velocity.y, gravity, jumpImpulse);
        body.velocity = velocity;
    }

    inline function updateSnapVector() {
        if (body.isOnFloor()) {
            snapVector = body.getFloorNormal();
        }
        else {
            snapVector = new Vector3(0, -1, 0);
        }
    }

    inline function jump() {
        if (InputService.isActionJustPressed("jump")) {
            if (body.isOnFloor()) {
                snapVector = Vector3.zero();
                var velocity = body.velocity;
                velocity.y = jumpImpulse;
                body.velocity = velocity;
                timesJumped++;
            }
            else if (body.velocity.y > jumpImpulse / 2) {
                var velocity = body.velocity;
                velocity.y = jumpImpulse / 2.0;
                body.velocity = velocity;
            }   
        }
    }

    inline function applyControllerRotation() {
        //
    }
}