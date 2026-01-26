package test19;

import sunaba.core.ArrayList;
import sunaba.Debug;
import sunaba.audio.AudioSource;
import sunaba.audio.AudioStreamOggVorbis;
import lua.Io;
import sunaba.audio.AudioStream;
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
import sunaba.Timer;

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

    private var footsounds: ArrayList;
    private var currentFootSoundIdx: Int = 0;
    private var footSoundMaxIdx: Int = 0;
    private var canPlayWalkSound: Bool = true;
    private var footSoundTimer: Timer;
    private var footSoundPlayer: AudioSource;

    private var jumpSoundPlayer: AudioSource;

    private var defaultWalkSoundTime: Float = 0.35;
    private var sprintWalkSoundTime: Float = 0.25;

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
        jumpImpulse = 12.5;
        gravity = -40.0;

        mouseSensitivity = 1.0;
        controllerSensitivity = 30.0;

        snapVector = new Vector3(0, 0, 0);

        timesJumped = 0;

        isStarted = false;

        defaultWalkSoundTime = 0.35;
        sprintWalkSoundTime = 0.25;

        canPlayWalkSound = true;
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

        footsounds = new Array();
        trace(entity.io == null);
        var footSoundsList = entity.io.getFileList("basesfx://walk/", "");
        trace(footSoundsList == null);
        for (i in 0...footSoundsList.size()) {
            var footSoundPath: String = footSoundsList.get(i);
            var footSoundBytes = entity.io.loadBytes(footSoundPath);
            var footSound = AudioStreamOggVorbis.loadFromBuffer(footSoundBytes);
            footSound.loop = false;
            footsounds.append(footSound.native);
            footSoundMaxIdx = i;
        }

        footSoundTimer = new Timer();
        footSoundTimer.waitTime = defaultWalkSoundTime;
        footSoundTimer.timeout.add(() -> {
            canPlayWalkSound = true;
        });
        if (entity.node != null) {
            entity.node.addChild(footSoundTimer);
        }

        var fspEntity = entity.find("FootSoundPlayer");
        if (fspEntity == null) {
            Debug.error("FootSoundPlayer entity doesn't exist");
            return;
        }

        if (!scene.isInEditor) {
            footSoundPlayer = fspEntity.addComponent(AudioSource);
            if (footSoundPlayer == null) {
                Debug.error("FootSoundPlayer doesn't exist");
                return;
            }

            footSoundPlayer.stream = new AudioStream(footsounds[0]);
        }

        var jspEntity = entity.find("JumpSoundPlayer");
        if (jspEntity == null) {
            Debug.error("JumpSoundPlayer entity doesn't exist");
            return;
        }

        jumpSoundPlayer = jspEntity.getComponent(AudioSource);
        if (jumpSoundPlayer == null) {
            Debug.error("JumpSoundPlayer doesn't exist");
            return;
        }

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
            if (keyEvent.keycode == Key.shift) {
                if (keyEvent.isPressed() == true) {
                    InputService.actionPress("sprint");
                }
                else if (keyEvent.isReleased()) {
                    InputService.actionRelease("sprint");
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
                newRotation.y -= mouseAxis.x * mouseSensitivity * 0.001;
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

    // In onPhysicsUpdate, ensure this order and logic:
    public override function onPhysicsUpdate(deltaTime:Float) {
        if (isActive) {
            if (body.velocity.length() == 0) {
                //
            }
            else {
                if (canPlayWalkSound) {
                    footSoundPlayer.stream = new AudioStream(footsounds.pickRandom());    
                    footSoundPlayer.play();
                    footSoundTimer.start();
                    canPlayWalkSound = false;
                }
                if (speed == defaultSpeed) {
                }
                else if (speed == sprintSpeed) {
                }
            }
            
            speed = defaultSpeed;
            footSoundTimer.waitTime = defaultWalkSoundTime;
            var inputVector = getInputVector();
            var direction = getDirection(inputVector);

            if (InputService.isActionPressed("sprint")) {
                speed = sprintSpeed; 
                footSoundTimer.waitTime = sprintWalkSoundTime;
            }
        
            jump();
            applyMovement(direction, deltaTime);
            applyGravity(deltaTime);
            applyFriction(direction, deltaTime);
            applyControllerRotation();
        
            // Reset jump counter when on floor
            if (body.isOnFloor()) {
                timesJumped = 0;
            }
        
            body.upDirection = body.getFloorNormal();
            body.floorStopOnSlope = true;
            body.maxSlides = 4;
            body.floorMaxAngle = 0.7853;
            body.moveAndSlide();
            //processCollisions(); // Optional: if you want collision forces
        }
    }

    // Optional: If you want collision forces like Code B
    inline function processCollisions() {
        for (i in 0...body.getSlideCollisionCount()) {
            var collision = body.getSlideCollision(i);
            if (collision.isNull()) continue;
        
            for (j in 0...collision.getCollisionCount()) {
                var bodyNode = collision.getCollider(j);
                if (bodyNode.isNull()) continue;
            
                var rigidBody = RigidBody.getFromNode(bodyNode, scene);
                if (rigidBody == null || rigidBody.applyImpulse == null) continue;
            
                var force = 5.0;
                var point = collision.getPosition() - transform.globalPosition;
                var negativeNormal = new Vector3(-collision.getNormal(j).x, -collision.getNormal(j).y, -collision.getNormal(j).z);
                rigidBody.applyImpulse(negativeNormal * force, point);
            }
        }
    }

    inline function Clamp<T:Float>(value:T, min:T, max:T):T {
		return if (value < min) min else if (value > max) max else value;
	}

    // FIXED: Input vector remains normalized for consistent diagonal movement
    inline function getInputVector():Vector3 {
        var inputVector = new Vector3(0, 0, 0);
        inputVector.x = InputService.getVector("moveLeft", "moveRight", "moveForward", "moveBackward").x;
        inputVector.z = InputService.getVector("moveLeft", "moveRight", "moveForward", "moveBackward").y;
        return inputVector.normalized();
    }

    // FIXED: Simplified direction calculation (removed unnecessary quaternion multiplication)
    inline function getDirection(inputVector: Vector3):Vector3 {
        var direction = transform.transform.basis * inputVector;
        return direction.normalized();
    }

    inline function applyMovement(direction: Vector3, deltaTime: Float) {
        if (direction != Vector3.zero()) {
            var velocity = body.velocity;
            /*var newVelocity = velocity.moveToward(direction * speed, acceleration * deltaTime);
            velocity.x = newVelocity.x;
            velocity.z = newVelocity.z;
            //velocity = transform.quaternion * velocity;
            //trace(velocity);*/
            velocity.x = moveTowards(velocity.x, direction.x * speed, acceleration * deltaTime);
            velocity.z = moveTowards(velocity.z, direction.z * speed, acceleration * deltaTime);
            body.velocity = velocity;
        }
    }

    inline function moveTowards(current:Float, target:Float, maxDelta:Float):Float {
        if (current < target) return Math.min(current + maxDelta, target);
        if (current > target) return Math.max(current - maxDelta, target);
        return target;
    }

    // FIXED: Proper friction logic for both ground and air
    inline function applyFriction(direction: Vector3, deltaTime: Float) {
        if (direction == Vector3.zero()) {
            var velocity = body.velocity;
            if (body.isOnFloor()) {
                // Ground friction - slow down all axes
                velocity = velocity.moveToward(Vector3.zero(), friction * deltaTime);
            } else {
                // Air friction - only slow horizontal movement
                velocity.x = velocity.moveToward(Vector3.zero(), airFriction * deltaTime).x;
                velocity.z = velocity.moveToward(Vector3.zero(), airFriction * deltaTime).z;
            }
            body.velocity = velocity;
        }
    }

    // FIXED: Typo in parameter name and consistent clamping
    inline function applyGravity(deltaTime: Float) {
        var velocity = body.velocity;
        velocity.y += gravity * deltaTime;
        // Clamp vertical velocity between gravity (max fall) and jumpImpulse (max rise)
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

    // FIXED: Simplified jump logic matching Code B
    inline function jump() {
        if (InputService.isActionJustPressed("jump")) {
            if (body.isOnFloor()) {
                jumpSoundPlayer.play();
                snapVector = Vector3.zero();
                var velocity = body.velocity;
                velocity.y = jumpImpulse;
                body.velocity = velocity;
                timesJumped++;
            }
        }
    }

    inline function applyControllerRotation() {
        //
    }
}