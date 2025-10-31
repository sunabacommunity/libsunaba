package sys;

import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.Variant;
import sunaba.core.native.NativeReference;
import sunaba.core.VariantType;
import sunaba.core.TypedArray;

class FileSystem {
	private static var _native: NativeReference;

	private static function getNative() {
		if (_native == null) {
			_native = new NativeReference("res://Engine/HxFIleSystem.cs", new ArrayList(), ScriptType.csharp);
		}
		return _native;
	}

	public static function exists(path:String):Bool {
		if (path == null)
			return false;
		else {
			var args: Array<Variant> = [path];
			return getNative().call("Exists", args);
		}
	}

	public inline static function rename(path:String, newPath:String):Void {
		var ret = lua.Os.rename(path, newPath);
		if (!ret.success) {
			throw ret.message;
		}
	}

	public inline static function stat(path:String):FileStat {
		var args: Array<Variant> = [path];
		var ls = getNative().call("Stat", args);
		if (ls.getType() == VariantType.string)
			throw ls.toString();
		var l : NativeReference = ls;

		var gid: Int = l.get("Gid");
		var uid: Int = l.get("Uid");
		var atimeObj: NativeReference = l.get("ATime");
		var atime: Date = new Date(
			atimeObj.get("Year"),
			atimeObj.get("Month"),
			atimeObj.get("Day"),
			atimeObj.get("Hour"),
			atimeObj.get("Min"),
			atimeObj.get("Sec")
		);
		var mtimeObj: NativeReference = l.get("MTime");
		var mtime: Date = new Date(
			mtimeObj.get("Year"),
			mtimeObj.get("Month"),
			mtimeObj.get("Day"),
			mtimeObj.get("Hour"),
			mtimeObj.get("Min"),
			mtimeObj.get("Sec")
		);
		var ctimeObj: NativeReference = l.get("CTime");
		var ctime: Date = new Date(
			ctimeObj.get("Year"),
			ctimeObj.get("Month"),
			ctimeObj.get("Day"),
			ctimeObj.get("Hour"),
			ctimeObj.get("Min"),
			ctimeObj.get("Sec")
		);
		var size: Int = l.get("Size");
		var dev: Int = l.get("Dev");
		var ino: Int = l.get("Ino");
		var nlink: Int = l.get("NLink");
		var rdev: Int = l.get("RDev");
		var mode: Int = l.get("Mode");

		return {
			gid: gid,
			uid: uid,
			rdev: rdev,
			size: size,
			nlink: nlink,
			mtime: mtime,
			mode: mode,
			ino: ino,
			dev: dev,
			ctime: ctime,
			atime: atime
		};
	}

	public inline static function fullPath(relPath:String):String {
		var args: Array<Variant> = [relPath];
		return getNative().call("FullPath", args);
	}

	public inline static function absolutePath(relPath:String):String {
		var args: Array<Variant> = [relPath];
		return getNative().call("AbsolutePath", args);
	}

	public inline static function deleteFile(path:String):Void {
		var ret = lua.Os.remove(path);
		if (!ret.success) {
			throw ret.message;
		}
	}

	public inline static function readDirectory(path:String):Array<String> {
		var args: Array<Variant> = [path];
		var result: TypedArray<String> = getNative().call("ReadDirectory", args);
		return result.toArray();
	}

	public inline static function isDirectory(path:String):Bool {
		var args: Array<Variant> = [path];
		return getNative().call("IsDirectory", args);
	}

	public inline static function deleteDirectory(path:String):Void {
		var args: Array<Variant> = [path];
		getNative().call("DeleteDirectory", args);
	}

	public static function createDirectory(path:String):Void {
		var path = haxe.io.Path.addTrailingSlash(path);
		if (exists(path)) return;
		var createDirectoryArgs: Array<Variant> = [path];

		var result: Bool = getNative().call("CreateDirectory", createDirectoryArgs);
		if (!result)
			throw "Could not create directory:" + path;
	}
}
