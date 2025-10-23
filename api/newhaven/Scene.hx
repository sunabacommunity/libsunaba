package newhaven;

import newhaven.core.native.NativeObject;
import newhaven.core.ArrayList;

class Scene extends Node {
	public function new(?_native: NativeObject) {
		super();
		if (_native == null) {
			_native = new NativeObject('Scene');
		}
		native = _native;
	}

	public function getObjects(): Array<GameObject> {
		var objsArrList: ArrayList = native.call("GetObjects", new ArrayList());
		var objects: Array<GameObject> = new Array();
		for(i in 0...objsArrList.size()) {
			var objNative : NativeObject = objsArrList.get(i);
			var obj = new GameObject(objNative);
			objects.push(obj);
		}
		return objects;
	}

	public var gameObjects(get, default): Array<GameObject>;
	function get_gameObjects():Array<GameObject> {
		return getObjects();
	}

	public function addObject(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("AddObject", args);
	}

	public function removeObject(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("RemoveObject", args);
	}

	public function hasObject(object: GameObject) {
		var args = new ArrayList();
		args.append(object.native);
		native.call("HasObject", args);
	}

	public function find(path: String): GameObject {
		var args = new ArrayList();
		args.append(path);
		var obj = native.call("Find", args);
		return new GameObject(obj);
	}

	public function getObjectCount() {
		return native.call("GetObjectCount", new ArrayList());
	}

	public function getObject(index: Int): GameObject {
		var args = new ArrayList();
		args.append(index);
		var obj = native.call("GetObject", args);
		return new GameObject(obj);
	}

	public function destroy() {
		native.call("destroy", new ArrayList());
	}
}
