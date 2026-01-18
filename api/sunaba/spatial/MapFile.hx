package sunaba.spatial;

import sunaba.io.IoManager;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.native.ScriptType;

class MapFile extends BaseClass {
    public var path: String;

    public var textureDirs: Array<String> = new Array();

    public var io: IoManager;

    public function new(p: String) {
        path = p;
        textureDirs.push("basetxt://textures/");
        io = new IoManager(untyped __lua__("_G.__ioManager"));
    }

    public function instantiate() {
        var mapNativeObj: NativeObject = new NativeReference("res://Engine/MapSceneInstancer.cs", new ArrayList(), ScriptType.csharp).call("Instantiate", new ArrayList());
        var mapNode = new Node(mapNativeObj);
        var mapNodeEntity = new Entity();
        var mapNodeTransform = mapNodeEntity.addComponent(SpatialTransform);
        mapNodeTransform.node = mapNode;
        mapNodeEntity.name = "MapEntity";

        var mapContents = io.loadText(path);
        var newMapPath = "user://" + path.split("/").pop();
        io.saveText(newMapPath, mapContents);

        var newTextureDir = "user://textures/";
        if (!io.directoryExists(newTextureDir)) {
            io.createDirectory(newTextureDir);
        }
        for (textureDir in textureDirs) {
            var textureList = io.getFileList(textureDir);
            for (i in 0...textureList.size()) {
                var texturePath: String = textureList.get(i);
                var textureData = io.loadBytes(texturePath);
                var newTexturePath = newTextureDir + texturePath.split("/").pop();
                io.saveBytes(newTexturePath, textureData);
            }
        }
        var realTextureDir = io.getFilePath(newTextureDir);

        var mapSettings: NativeReference = mapNativeObj.get("map_settings");
        mapSettings.set("base_texture_dir", realTextureDir);

        mapNativeObj.set("local_map_file", io.getFilePath(newMapPath));
        mapNativeObj.call("build", new ArrayList());

        var sceneNode = new SceneRoot();
        sceneNode.addEntity(mapNodeEntity);
        return sceneNode;
    }
}