package sunaba;

class Prefab extends EntityData {

	public static function create(entity: Entity, path: String) {
		if (path == "") {
			throw "Empty path";
		}
		else if ((!StringTools.contains(path, "://")) && (!StringTools.endsWith(path, ".vscn"))) {
			throw "Invalid prefab path";
		}
		var prefab = new Prefab();
		prefab.createFromEntity(entity);
		prefab.path = path;
		entity.prefabPath = path;
		return prefab;
	}

	public function instance() {
		var entity = toEntity();
		if (path == "") {
			throw "Ivalid prefab path";
		}
		entity.prefabPath = path;
		if (!entity.isPrefab()) {
			throw "Failed to instantiate prefab";
		}
		return entity;
	}

}
