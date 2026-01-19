package sunaba.spatial;

import sunaba.core.Signal;
import haxe.Json;
import sunaba.core.ByteArray.ByteArrayUtils;
import lua.Coroutine;
import sunaba.io.IoManager;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.native.ScriptType;
import sunaba.core.VariantType;

class MapFile extends BaseClass {
    public var path: String;

    public var textureDirs: Array<String> = new Array();

    public var io: IoManager;

    public var isRunningInCoroutine: Bool = false;

    public function new(p: String) {
        path = p;
        textureDirs.push("basetxt://textures/");
        io = new IoManager(untyped __lua__("_G.__ioManager"));
    }

    private inline function yield() {
        if (isRunningInCoroutine == true)
            Coroutine.yield();
    }

    public function instantiate() {
        var mapNativeObj: NativeObject = new NativeReference("res://Engine/MapSceneInstancer.cs", new ArrayList(), ScriptType.csharp).call("Instantiate", new ArrayList());
        var mapNode = new Node(mapNativeObj);
        mapNode.sceneFilePath = "";
        var mapNodeEntity = new Entity();
        var mapNodeTransform = mapNodeEntity.addComponent(SpatialTransform);
        mapNodeTransform.node = mapNode;
        mapNodeEntity.name = "MapEntity";
        yield();

        var mapContents = io.loadText(path);
        var newMapPath = "user://" + path.split("/").pop();
        io.saveText(newMapPath, mapContents);
        yield();

        var newTextureDir = "user://textures/";
        if (!io.directoryExists(newTextureDir)) {
            io.createDirectory(newTextureDir);
        }
        var savedTextures: Array<String> = new Array();
        var savedTexturesJsonPath = newTextureDir + "saveTextures.json";
        if (io.fileExists(savedTexturesJsonPath)) {
            savedTextures = Json.parse(io.loadText(savedTexturesJsonPath));
        }
        yield();
        for (textureDir in textureDirs) {
            yield();
            var textureList = io.getFileList(textureDir);
            yield();
            for (i in 0...textureList.size()) {
                var texturePath: String = textureList.get(i);
                if (StringTools.endsWith(texturePath, "/")) {
                    continue;
                }
                if (savedTextures.contains(texturePath)) {
                    continue;
                }
                else {
                    savedTextures.push(texturePath);
                }
                var textureData = io.loadBytes(texturePath);
                var texturePathArray = texturePath.split("/");
                var texturePathDirArray = texturePathArray.slice(0, texturePathArray.length - 1);
                var newTexturePathDir = texturePathDirArray.join("/");
                newTexturePathDir = StringTools.replace(newTexturePathDir, textureDir, newTextureDir);
                if (!StringTools.endsWith(newTexturePathDir, "/")) {
                    newTexturePathDir += "/";
                }
                if(!io.directoryExists(newTexturePathDir)) {
                    io.createDirectory(newTexturePathDir);
                }
                var newTexturePath = newTexturePathDir + texturePathArray.pop();
                trace(newTexturePath);
                if (io.fileExists(newTexturePath)) {
                    if (ByteArrayUtils.binaryDataToBase64(io.loadBytes(newTexturePath)) == ByteArrayUtils.binaryDataToBase64(textureData)) {
                        yield();
                        continue;
                    }
                }
                io.saveBytes(newTexturePath, textureData);
                yield();
            }
            yield();
        }
        yield();
        io.saveText(savedTexturesJsonPath, Json.stringify(savedTextures));
        yield();
        var realTextureDir = io.getFilePath(newTextureDir);
        yield();
        trace(realTextureDir);

        var mapSettings: NativeReference = mapNativeObj.get("map_settings");
        mapSettings.set("base_texture_dir", realTextureDir);
        yield();

        var sceneNode = new SceneRoot();
        yield();

        var buildComplete = Signal.createFromObject(mapNativeObj, "build_complete");
        buildComplete.add(() -> {
            for (i in 0...mapNode.getChildCount()) {
                var node = mapNode.getChild(i);
                if (node.native.get("map_properties").getType() == VariantType.dictionary) {
                    var prefabPath: String = node.native.get("prefab_path");
                    var prefabName: String = node.native.get("prefab_name");
                    trace(prefabName);
                    trace(prefabPath);

                    var prefab: Prefab = new Prefab();
                    prefab.load(prefabPath);

                    var prefabEntity = prefab.instance();
                    prefabEntity.name = prefabName;
                    var prefabTranform = prefabEntity.getComponent(SpatialTransform);
                    if (prefabTranform != null) {
                        prefabTranform.transform = node.native.get("transform");
                    }
                    sceneNode.addEntity(prefabEntity);
                }
            }
        });
        var buildFailed = Signal.createFromObject(mapNativeObj, "build_failed");
        buildFailed.add(()-> {
            throw "Failed to build map";
        });
        yield();

        var realMapPath = io.getFilePath(newMapPath);
        mapNativeObj.set("local_map_file", realMapPath);
        yield();
        mapNativeObj.call("build", new ArrayList());
        yield();

        sceneNode.addEntity(mapNodeEntity);
        yield();
        return sceneNode;
    }
}