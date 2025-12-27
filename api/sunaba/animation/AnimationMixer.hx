package sunaba.animation;

import sunaba.core.VariantNative;
import sunaba.core.Variant;
import sunaba.spatial.models.gltf.GLTFAnimation;
import sunaba.core.Dictionary;
import sunaba.core.Quaternion;
import sunaba.core.Vector3;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;

class AnimationMixer extends Behavior {
    public var node: Node;

	public var active(get, set): Bool;
	function get_active():Bool {
		return node.native.get("active");
	}
	function set_active(value:Bool):Bool {
		node.native.set("active", value);
		return value;
	}

	public var audioMaxPolyphony(get, set): Int;
	function get_audioMaxPolyphony():Int {
		return node.native.get("audio_max_polyphony");
	}
	function set_audioMaxPolyphony(value:Int):Int {
		node.native.set("audio_max_polyphony", value);
		return value;
	}

	public var callbackModeDiscrete(get, set): Int;
	function get_callbackModeDiscrete():Int {
		return node.native.get("callback_mode_discrete");
	}
	function set_callbackModeDiscrete(value:Int):Int {
		node.native.set("callback_mode_discrete", value);
		return value;
	}

	public var callbackModeMethod(get, set): Int;
	function get_callbackModeMethod():Int {
		return node.native.get("callback_mode_method");
	}
	function set_callbackModeMethod(value:Int):Int {
		node.native.set("callback_mode_method", value);
		return value;
	}

	public var callbackModeProcess(get, set): Int;
	function get_callbackModeProcess():Int {
		return node.native.get("callback_mode_process");
	}
	function set_callbackModeProcess(value:Int):Int {
		node.native.set("callback_mode_process", value);
		return value;
	}

	public var deterministic(get, set): Bool;
	function get_deterministic():Bool {
		return node.native.get("deterministic");
	}
	function set_deterministic(value:Bool):Bool {
		node.native.set("deterministic", value);
		return value;
	}

	public var resetOnSave(get, set): Bool;
	function get_resetOnSave():Bool {
		return node.native.get("reset_on_save");
	}
	function set_resetOnSave(value:Bool):Bool {
		node.native.set("reset_on_save", value);
		return value;
	}

	public var rootMotionLocal(get, set): Bool;
	function get_rootMotionLocal():Bool {
		return node.native.get("root_motion_local");
	}
	function set_rootMotionLocal(value:Bool):Bool {
		node.native.set("root_motion_local", value);
		return value;
	}

	public var rootMotionTrack(get, set): String;

	function get_rootMotionTrack():String {
		return node.native.get("root_motion_track");
	}
	function set_rootMotionTrack(value:String):String {
		node.native.set("root_motion_track", value);
		return value;
	}

    public function addAnimationLibrary(name: String, library: AnimationLibrary): Int {
        var args = new ArrayList();
        args.append(name);
        args.append(library);
        return node.native.call("add_animation_library", args);
    }

    public function advance(delta: Float) {
        var args = new ArrayList();
        args.append(delta);
        node.native.call("advance", args);
    }

    public function capture(name: String, duration: Float, ?transType: Int, ?easeType: Int) {
        var args = new ArrayList();
        args.append(name);
        args.append(duration);
        if (transType != null) {
            args.append(transType);
        }
        if (easeType != null) {
            args.append(easeType);
        }
        node.native.call("capture", args);
    }

    public function clearCaches() {
        node.native.call("clear_caches", new ArrayList());
    }

    public function findAnimation(animation: Animation): String {
        var args = new ArrayList();
        args.append(animation);
        return node.native.call("find_animation", args);
    }

    public function findAnimationLibrary(animation: Animation): String {
        var args = new ArrayList();
        args.append(animation);
        return node.native.call("find_animation_library", args);
    }

    public function getAnimation(name: String): Animation {
        var args = new ArrayList();
        args.append(name);
        return new Animation(node.native.call("get_animation", args));
    }

	public function getAnimationLibrary(name: String) {
		var args = new ArrayList();
        args.append(name);
        return new AnimationLibrary(node.native.call("get_animation_library", args));
	}

	public function getAnimationLibraryList(): ArrayList {
		return node.native.call("get_animation_library_list", new ArrayList());
	}

	public function getAnimationList(): TypedArray<String> {
		return node.native.call("get_animation_list", new ArrayList());
	}

	public function getRootMotionPosition(): Vector3 {
		return node.native.call("get_root_motion_position", new ArrayList());
	}

	public function getRootMotionPositionAccumulator(): Vector3 {
		return node.native.call("get_root_motion_position_accumulator", new ArrayList());
	}

	public function getRootMotionRotation(): Quaternion {
		return node.native.call("get_root_motion_rotation", new ArrayList());
	}

	public function getRootMotionRotationAccumulator(): Quaternion {
		return node.native.call("get_root_motion_rotation_accumulator", new ArrayList());
	}

	public function getRootMotionScale(): Vector3 {
		return node.native.call("get_root_motion_scale", new ArrayList());
	}

	public function getRootMotionScaleAccumulator(): Vector3 {
		return node.native.call("get_root_motion_scale_accumulator", new ArrayList());
	}

	public function hasAnimation(name: String): Bool {
		var args = new ArrayList();
		args.append(name);
		return node.native.call("has_animation", args);
	}

	public function hasAnimationLibrary(name: String): Bool {
		var args = new ArrayList();
		args.append(name);
		return node.native.call("has_animation_library", args);
	}

	public function removeAnimationLibrary(name: String): Void {
		var args = new ArrayList();
		args.append(name);
		node.native.call("remove_animation_library", args);
	}

	public function renameAnimationLibrary(name: String, newname: String): Void {
		var args = new ArrayList();
		args.append(name);
		args.append(newname);
		node.native.call("remove_animation_library", args);
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("active", active);
		data.set("audioMaxPolyphony", audioMaxPolyphony);
		data.set("callbackModeDiscrete", callbackModeDiscrete);
		data.set("callbackModeMethod", callbackModeMethod);
		data.set("callbackModeProcess", callbackModeProcess);
		data.set("deterministic", deterministic);
		data.set("resetOnSave", resetOnSave);
		data.set("rootMotionLocal", rootMotionLocal);
		data.set("rootMotionTrack", rootMotionTrack);
		
		var animationLibraryList = getAnimationLibraryList();
		var animationLibraryListSerialized = new Dictionary();
		for (i in 0...animationLibraryList.size()) {
			var animLibName : String = animationLibraryList.get(i);
			var animLib = getAnimationLibrary(animLibName);
			animationLibraryListSerialized.set(animLibName, DataUtils.varToDict(animLib.native));
		}
		data.set("animationLibraries", animationLibraryListSerialized);

		/*var animationList = getAnimationList();
		var animationListSerialized = new Dictionary();
		for (i in 0...animationList.size()) {
			var animName = animationList.get(i);
			if (animationsPartOfALibrary.contains(animName))
				continue;
			var animation = getAnimation(animName);
			animationListSerialized.set(animName, DataUtils.varToDict(animation.native));
		}
		data.set("animations", animationListSerialized);*/


		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		active = data.get("active");
		audioMaxPolyphony = data.get("audioMaxPolyphony");
		callbackModeDiscrete = data.get("callbackModeDiscrete");
		callbackModeMethod = data.get("callbackModeMethod");
		callbackModeProcess = data.get("callbackModeProcess");
		deterministic = data.get("deterministic");
		resetOnSave = data.get("resetOnSave");
		rootMotionLocal = data.get("rootMotionLocal");
		rootMotionTrack = data.get("rootMotionTrack");

		var animationLibraryList: Dictionary = data.get("animationLibraries");
		var animationLibraryNames = animationLibraryList.keys();
		for (i in 0...animationLibraryNames.size()) {
			var animationLibraryName: String = animationLibraryNames.get(i);
			var animationLibraryData: Dictionary = animationLibraryList.get(animationLibraryName);
			var animationLibrary = new AnimationLibrary(DataUtils.dictToVar(animationLibraryData));
			var propertiesData: Dictionary = animationLibraryData.get("value").toDictionary().get("properties");
			var animationListData: Dictionary = propertiesData.get("_data").toDictionary().get("value");
			trace("");
			Sys.println(JSON.stringify(animationListData));
			for (keyv in animationListData.keys().toArray()) {
				var key: String = keyv;
				var value = animationListData.get(key);
				var animation = new Animation(DataUtils.dictToVar(value));
				animation.clear();
				trace("");
				trace(key);
				Sys.println(JSON.stringify(value));
				var animationPropertyData: Dictionary = value.toDictionary().get("value").toDictionary().get("properties"); 
				var trackData: Map<Int, Map<String, Variant>> = new Map();
				for (propKeyv in animationPropertyData.keys().toArray()) {
                	var propKey: String = propKeyv;
					trace(propKey);
                	if (StringTools.startsWith(propKey, "tracks/")) {
                    	var parts = propKey.split("/");
                    	var trackIdx = Std.parseInt(parts[1]);
                    	var propName = parts[2];
                    
                    	if (!trackData.exists(trackIdx)) {
                        	trackData.set(trackIdx, new Map());
                    	}
                    
						trace("trackIdx: " + trackIdx + " propName: " + propName + " data: " + JSON.stringify(animationPropertyData.get(propKey).toDictionary().get("value")));
                    	trackData.get(trackIdx).set(propName, 
                    	    DataUtils.dictToVar(animationPropertyData.get(propKey).toDictionary()));
                	}
            	}

				for (trackIdx in trackData.keys()) {
					var track = trackData.get(trackIdx);
					var trackType: String = track.get("type");
					var trackPath: String = track.get("path");

					var godotTrackIdx = -1;

					switch(trackType) {
        				case "position_3d": godotTrackIdx = animation.addTrack(TrackType.position3d);
        				case "rotation_3d": godotTrackIdx = animation.addTrack(TrackType.rotation3d);
        				case "scale_3d": godotTrackIdx = animation.addTrack(TrackType.scale3d);
        				case "value": godotTrackIdx = animation.addTrack(TrackType.value);
        				default: trace("WARNING: Unknown track type: " + trackType);
    				}

					if (godotTrackIdx >= 0) {
						animation.trackSetPath(
							godotTrackIdx,
							trackPath
						);

						// Set track properties with null checks
                            if (track.exists("enabled")) {
                                var enabledVal = track.get("enabled");
                                if (enabledVal != null) {
                                    animation.trackSetEnabled(godotTrackIdx, enabledVal.toBool());
                                }
                            }
                            if (track.exists("imported")) {
                                var importedVal = track.get("imported");
                                if (importedVal != null) {
                                    animation.trackSetImported(godotTrackIdx, importedVal.toBool());
                                }
                            }
                            if (track.exists("interp")) {
                                var interpVal = track.get("interp");
                                if (interpVal != null) {
                                    animation.trackSetInterpolationType(godotTrackIdx, interpVal.toInt());
                                }
                            }
                            if (track.exists("loop_wrap")) {
                                var loopWrapVal = track.get("loop_wrap");
                                if (loopWrapVal != null) {
                                    animation.trackSetInterpolationLoopWrap(godotTrackIdx, loopWrapVal.toBool());
                                }
                            }

						if (track.exists("keys")) {
							var keys: Array<Float> = track.get("keys").toFloatArray();
							
							if (keys.length > 0) {
								var step = switch(trackType) {
                        			case "position_3d", "scale_3d": 5;
                        			case "rotation_3d": 6;
                        			default: 2;
                    			};
								
								if (keys.length % step != 0) {
									trace("ERROR: Invalid keys array length for track " + trackIdx + 
                              			  ". Expected multiple of " + step + ", got " + keys.length);
								}
								else {
									/*var k = 0;
									while ( k < keys.length) {
										var time = keys[k];
										trace(keys[k]);
										var transition = keys[k + 1];
										trace(keys[k + 1]);

										switch(trackType) {
                                            case "position_3d":
                                                var pos = new Vector3(
                                                    keys[k + 2],
                                                    keys[k + 3],
                                                    keys[k + 4]
                                                );
												trace(keys[k + 2]);
												trace(keys[k + 3]);
												trace(keys[k + 4]);
                                                var res = animation.positionTrackInsertKey(godotTrackIdx, time, pos);
												trace(res);
                                            case "rotation_3d":
                                                var rot = new Quaternion(
                                                    keys[k + 2],
                                                    keys[k + 3],
                                                    keys[k + 4],
                                                    keys[k + 5]
                                                );
												trace(keys[k + 2]);
												trace(keys[k + 3]);
												trace(keys[k + 4]);
												trace(keys[k + 5]);
                                                var res = animation.rotationTrackInsertKey(godotTrackIdx, time, rot);
												trace(res);
                                            case "scale_3d":
                                                var scale = new Vector3(
                                                    keys[k + 2],
                                                    keys[k + 3],
                                                    keys[k + 4]
                                                );
												trace(keys[k + 2]);
												trace(keys[k + 3]);
												trace(keys[k + 4]);
                                                var res = animation.scaleTrackInsertKey(godotTrackIdx, time, scale);
												trace(res);
                                            default:
                                                // For value tracks, you'd need to handle differently
                                                trace("Value tracks not yet implemented");
                                        }
										k += step;
									}*/
								}
							}
							else {
								trace("WARNING: Empty keys array for track " + trackIdx + 
                          			  " (" + trackPath + "). Animation will have no effect.");
							}
						}
						else {
            				trace("WARNING: No keys property found for track " + trackIdx);
        				}

						var propKey = 'tracks/' + godotTrackIdx + "/keys";
						var keysArray = new VariantNative().asFloatArray();
						var oldKeysArray = animationPropertyData.get(propKey).toDictionary().get("value").toArray();
						var oldKeysArrayHx = oldKeysArray.toArray();
						var lastVariantIndex = 0;
						for (variant in oldKeysArrayHx) {
							
							var newLastVariantIndex = oldKeysArrayHx.indexOf(variant);
							if (newLastVariantIndex > lastVariantIndex)
								lastVariantIndex = newLastVariantIndex;
							else 
								lastVariantIndex++;
							if (variant.toFloat() != oldKeysArray.get(lastVariantIndex).toFloat())
								keysArray.add(oldKeysArray.get(lastVariantIndex));
							else
								keysArray.add(variant);
							trace(lastVariantIndex);
						}
						trace(lastVariantIndex);
						trace(oldKeysArray.size());

						animation.native.set(propKey, Variant.fromFloatArray(keysArray));
						

						if (track.exists("enabled")) {
							animation.trackSetEnabled(
								godotTrackIdx,
								track["enabled"]
							);
						}
						if (track.exists("imported")) {
							animation.trackSetImported(
								godotTrackIdx,
								track["imported"]
							);
						}
						if (track.exists("interp")) {
							animation.trackSetInterpolationType(
								godotTrackIdx,
								track["interp"]
							);
						}
						if (track.exists("loop_wrap")) {
							animation.trackSetInterpolationLoopWrap(
								godotTrackIdx,
								track["loop_wrap"]
							);
						}
					}
				}
				
				trace("");
				Sys.println(JSON.stringify(DataUtils.varToDict(animation.native)));
				animationLibrary.addAnimation(key, animation);
			}
			trace("");
			Sys.println(JSON.stringify(DataUtils.varToDict(animationLibrary.native)));
			addAnimationLibrary(animationLibraryName, animationLibrary);
		}

		/*var animationList: Dictionary = data.get("animations");
		var animationNames = animationList.keys();
		for (i in 0...animationNames.size()) {
			var animationName: String = animationNames.get(i);
			var animationData: Dictionary = animationList.get(animationName);
			var animation = new Animation(DataUtils.dictToVar(animationData));
		}*/
	}
}
