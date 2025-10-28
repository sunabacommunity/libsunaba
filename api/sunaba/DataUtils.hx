package sunaba;
import sunaba.core.Dictionary;
import sunaba.core.Variant;
import sunaba.io.IoInterface;
import sunaba.core.VariantType;
import sunaba.core.Vector2;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.Vector4;
import sunaba.core.Vector4i;
import sunaba.core.Vector3i;
import sunaba.core.Vector2i;
import sunaba.core.Rect2;
import sunaba.core.Rect2i;
import sunaba.core.Transform2D;
import sunaba.core.Quaternion;
import sunaba.core.Basis;
import sunaba.core.Transform3D;
import sunaba.core.Color;
import sunaba.core.Plane;
import sunaba.core.AABB;
import sunaba.core.Projection;
import sunaba.core.ByteArray;
import sunaba.core.TypedArray;
import sunaba.core.VariantNative;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import haxe.macro.Expr.Var;
import haxe.Int32;

class DataUtils {
	public static function varToDict(variant: Variant): Dictionary {
		var dict = new Dictionary();

		var type: Int = variant.getType();
		dict.set("type", type);

		if (type == VariantType.string
		|| type == VariantType.stringName
		|| type == VariantType.nodePath
		|| type == VariantType.bool
		|| type == VariantType.int
		|| type == VariantType.float) {
			dict.set("value", variant);
		}
		else if (type == VariantType.vector2) {
			var vec2: Vector2 = variant;
			var vec2Array = new ArrayList();
			vec2Array.append(vec2.x);
			vec2Array.append(vec2.y);
			dict.set("value", vec2Array);
		}
		else if (type == VariantType.vector3) {
			var vec3: Vector3 = variant;
			var vec3Array = new ArrayList();
			vec3Array.append(vec3.x);
			vec3Array.append(vec3.y);
			vec3Array.append(vec3.z);
			dict.set("value", vec3Array);
		}
		else if (type == VariantType.vector4) {
			var vec4: Vector4 = variant;
			var vec4Array = new ArrayList();
			vec4Array.append(vec4.x);
			vec4Array.append(vec4.y);
			vec4Array.append(vec4.z);
			vec4Array.append(vec4.w);
			dict.set("value", vec4Array);
		}
		else if (type == VariantType.vector2i) {
			var vec2: Vector2i = variant;
			var vec2Array = new ArrayList();
			vec2Array.append(vec2.x);
			vec2Array.append(vec2.y);
			dict.set("value", vec2Array);
		}
		else if (type == VariantType.vector3i) {
			var vec3: Vector3i = variant;
			var vec3Array = new ArrayList();
			vec3Array.append(vec3.x);
			vec3Array.append(vec3.y);
			vec3Array.append(vec3.z);
			dict.set("value", vec3Array);
		}
		else if (type == VariantType.vector4i) {
			var vec4: Vector4i = variant;
			var vec4Array = new ArrayList();
			vec4Array.append(vec4.x);
			vec4Array.append(vec4.y);
			vec4Array.append(vec4.z);
			vec4Array.append(vec4.w);
			dict.set("value", vec4Array);
		}
		else if (type == VariantType.rect2) {
			var rect2: Rect2 = variant;
			var rect2Array = new ArrayList();
			rect2Array.append(varToDict(rect2.end));
			rect2Array.append(varToDict(rect2.position));
			rect2Array.append(varToDict(rect2.size));
			dict.set("value", rect2Array);
		}
		else if (type == VariantType.rect2i) {
			var rect2: Rect2i = variant;
			var rect2Array = new ArrayList();
			rect2Array.append(varToDict(rect2.end));
			rect2Array.append(varToDict(rect2.position));
			rect2Array.append(varToDict(rect2.size));
			dict.set("value", rect2Array);
		}
		else if (type == VariantType.transform2d) {
			var t2d: Transform2D = variant;
			var t2dArray = new ArrayList();
			t2dArray.append(varToDict(t2d.origin));
			t2dArray.append(varToDict(t2d.x));
			t2dArray.append(varToDict(t2d.y));
			dict.set("value", t2dArray);
		}
		else if (type == VariantType.plane) {
			var plane: Plane = variant;
			var planeArray = new ArrayList();
			planeArray.append(plane.d);
			planeArray.append(varToDict(plane.normal));
			dict.set("value", planeArray);
		}
		else if (type == VariantType.quaternion) {
			var quat: Quaternion = variant;
			var quatArray = new ArrayList();
			quatArray.append(quat.x);
			quatArray.append(quat.y);
			quatArray.append(quat.z);
			quatArray.append(quat.w);
			dict.set("value", quatArray);
		}
		else if (type == VariantType.aabb) {
			var aabb: AABB = variant;
			var aabbArray = new ArrayList();
			aabbArray.append(varToDict(aabb.end));
			aabbArray.append(varToDict(aabb.position));
			aabbArray.append(varToDict(aabb.size));
			dict.set("value", aabbArray);
		}
		else if (type == VariantType.basis) {
			var basis: Basis = variant;
			var basisArray= new ArrayList();
			basisArray.append(varToDict(basis.x));
			basisArray.append(varToDict(basis.y));
			basisArray.append(varToDict(basis.z));
			dict.set("value", basisArray);
		}
		else if (type == VariantType.transform3d) {
			var t3d: Transform3D = variant;
			var t3dArray = new ArrayList();
			t3dArray.append(varToDict(t3d.basis));
			t3dArray.append(varToDict(t3d.origin));
			dict.set("value", t3dArray);
		}
		else if (type == VariantType.projection) {
			var proj: Projection = variant;
			var projArray = new ArrayList();
			projArray.append(varToDict(proj.x));
			projArray.append(varToDict(proj.y));
			projArray.append(varToDict(proj.z));
			projArray.append(varToDict(proj.w));
			dict.set("value", projArray);
		}
		else if (type == VariantType.color) {
			var color: Color = variant;
			dict.set("value", color.toHtml());
		}
		else if (type == VariantType.arrayList) {
			var arr: ArrayList = variant;
			var newArr = new ArrayList();
			for(i in 0...arr.size()) {
				var arrValue = arr.get(i);
				newArr.append(varToDict(arrValue));
			}
			dict.set("value", newArr);
		}
		else if (type == VariantType.dictionary) {
			var oldDict: Dictionary = variant;
			var newDict = new Dictionary();
			var keys = oldDict.keys();
			var values = oldDict.values();
		}
		else if (type == VariantType.byteArray) {
			var byteArray: ByteArray = variant;
			dict.set("value", MarshallsService.rawToBase64(byteArray));
		}
		else if (type == VariantType.int32Vector) {
			var vNative: VariantNative = variant;
			var int32Arr: TypedArray<Int> = vNative.asIntArray();
			var arr = new ArrayList();
			for(i in 0...int32Arr.size()) {
				arr.append(int32Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.int64Vector) {
			var vNative: VariantNative = variant;
			var int64Arr: TypedArray<Int> = vNative.asIntArray64();
			var arr = new ArrayList();
			for(i in 0...int64Arr.size()) {
				arr.append(int64Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.float32Vector) {
			var vNative: VariantNative = variant;
			var float32Arr: TypedArray<Float> = vNative.asFloatArray();
			var arr = new ArrayList();
			for (i in 0...float32Arr.size()) {
				arr.append(float32Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.float64Vector) {
			var vNative: VariantNative = variant;
			var float64Arr: TypedArray<Float> = vNative.asFloatArray64();
			var arr = new ArrayList();
			for (i in 0...float64Arr.size()) {
				arr.append(float64Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.stringVector) {
			var stringArr: TypedArray<String> = variant;
			var arr = new ArrayList();
			for (i in 0...stringArr.size()) {
				arr.append(stringArr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.vector2Vector) {
			var vector2Arr: TypedArray<Vector2> = variant;
			var arr = new ArrayList();
			for (i in 0...vector2Arr.size()) {
				arr.append(vector2Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.vector3Vector) {
			var vector3Arr: TypedArray<Vector3> = variant;
			var arr = new ArrayList();
			for (i in 0...vector3Arr.size()) {
				arr.append(vector3Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.vector4Vector) {
			var vector4Arr: TypedArray<Vector4> = variant;
			var arr = new ArrayList();
			for (i in 0...vector4Arr.size()) {
				arr.append(vector4Arr.get(i));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.colorVector) {
			var colorArr: TypedArray<Color> = variant;
			var arr = new ArrayList();
			for (i in 0...colorArr.size()) {
				arr.append(varToDict(colorArr.get(i)));
			}
			dict.set("value", arr);
		}
		else if (type == VariantType.object) {
			var obj: NativeObject = variant;
			if (obj.isClass("Resource")) {
				var ref: NativeReference = variant;
				dict.set("value", resToDict(ref));
			}
		}
		else {
			var empty = new Dictionary();
			return empty;
		}


		return dict;
	}

	public static function dictToVar(dict: Dictionary, ?ioInterface: IoInterface): Variant {
		var variant: Variant = new VariantNative();

		var type: Int = dict.get("type");
		var value: Variant = dict.get("value");

		if (type == VariantType.string
		|| type == VariantType.stringName
		|| type == VariantType.nodePath
		|| type == VariantType.bool
		|| type == VariantType.int
		|| type == VariantType.float ) {
			variant = value;
		}
		else if (type == VariantType.vector2) {
			var vec2Array: ArrayList = value;
			var vec2 = new Vector2(0, 0);
			vec2.x = vec2Array.get(0);
			vec2.y = vec2Array.get(1);
			variant = vec2;
		}
		else if (type == VariantType.vector3) {
			var vec3Array: ArrayList = value;
			var vec3 = new Vector3(0, 0, 0);
			vec3.x = vec3Array.get(0);
			vec3.y = vec3Array.get(1);
			vec3.z = vec3Array.get(2);
			variant = vec3;
		}
		else if (type == VariantType.vector4) {
			var vec4Array: ArrayList = value;
			var vec4 = new Vector4(0, 0, 0, 0);
			vec4.x = vec4Array.get(0);
			vec4.y = vec4Array.get(1);
			vec4.z = vec4Array.get(2);
			vec4.w = vec4Array.get(3);
			variant = vec4;
		}
		else if (type == VariantType.vector2i) {
			var vec2Array: ArrayList = value;
			var vec2 = new Vector2i(0, 0);
			vec2.x = vec2Array.get(0);
			vec2.y = vec2Array.get(1);
			variant = vec2;
		}
		else if (type == VariantType.vector3i) {
			var vec3Array: ArrayList = value;
			var vec3 = new Vector3i(0, 0, 0);
			vec3.x = vec3Array.get(0);
			vec3.y = vec3Array.get(1);
			vec3.z = vec3Array.get(2);
			variant = vec3;
		}
		else if (type == VariantType.vector4i) {
			var vec4Array: ArrayList = value;
			var vec4 = new Vector4i(0, 0, 0, 0);
			vec4.x = vec4Array.get(0);
			vec4.y = vec4Array.get(1);
			vec4.z = vec4Array.get(2);
			vec4.w = vec4Array.get(3);
			variant = vec4;
		}
		else if (type == VariantType.rect2) {
			var rect2Arr: ArrayList = value;
			var rect2: Rect2 = new Rect2();
			rect2.end = dictToVar(rect2Arr.get(0));
			rect2.position = dictToVar(rect2Arr.get(1));
			rect2.size = dictToVar(rect2Arr.get(2));
			variant = rect2;
		}
		else if (type == VariantType.rect2i) {
			var rect2Arr: ArrayList = value;
			var rect2: Rect2i = new Rect2i();
			rect2.end = dictToVar(rect2Arr.get(0));
			rect2.position = dictToVar(rect2Arr.get(1));
			rect2.size = dictToVar(rect2Arr.get(2));
			variant = rect2;
		}
		else if (type == VariantType.transform2d) {
			var t2dArr: ArrayList = value;
			var t2d: Transform2D = Transform2D.zero();
			t2d.origin = dictToVar(t2dArr.get(0));
			t2d.x = dictToVar(t2dArr.get(1));
			t2d.y = dictToVar(t2dArr.get(2));
			variant = t2d;
		}
		else if (type == VariantType.plane) {
			var planeArr: ArrayList = value;
			var plane = Plane.zero();
			plane.d = planeArr.get(0);
			plane.normal = dictToVar(planeArr.get(1));
			variant = plane;
		}
		else if (type == VariantType.quaternion) {
			var quatArr: ArrayList = value;
			var quat = Quaternion.zero();
			quat.x = quatArr.get(0);
			quat.y = quatArr.get(1);
			quat.z = quatArr.get(2);
			quat.w = quatArr.get(3);
			variant = quat;
		}
		else if (type == VariantType.aabb) {
			var aabbArr: ArrayList = value;
			var aabb = new AABB();
			aabb.end = dictToVar(aabbArr.get(0));
			aabb.position = dictToVar(aabbArr.get(1));
			aabb.size = dictToVar(aabbArr.get(2));
			variant = aabb;
		}
		else if (type == VariantType.basis) {
			var basisArr : ArrayList = value;
			var basis = Basis.zero();
			basis.x = dictToVar(basisArr.get(0));
			basis.y = dictToVar(basisArr.get(1));
			basis.z = dictToVar(basisArr.get(2));
			variant = basis;
		}
		else if (type == VariantType.transform3d) {
			var t3dArr: ArrayList = value;
			var t3d = Transform3D.zero();
			t3d.basis = dictToVar(t3dArr.get(0));
			t3d.origin = dictToVar(t3dArr.get(1));
			variant = t3d;
		}
		else if (type == VariantType.projection) {
			var projArr: ArrayList = value;
			var proj = Projection.zero();
			proj.x = dictToVar(projArr.get(0));
			proj.y = dictToVar(projArr.get(1));
			proj.z = dictToVar(projArr.get(2));
			proj.w = dictToVar(projArr.get(3));
			variant = proj;
		}
		else if (type == VariantType.color) {
			variant = Color.html(value);
		}
		else if (type == VariantType.dictionary) {
			var oldDict: Dictionary = value;
			var newDict = new Dictionary();
			var keys = oldDict.keys();
			var values = oldDict.values();
			for (i in 0...keys.size()) {
				var oldKey: Dictionary = keys.get(i);
				var oldValue: Dictionary = values.get(i);
				var newKey = dictToVar(oldKey);
				var newValue = dictToVar(oldValue);
				newDict.set(newKey, newValue);
			}
			variant = newDict;
		}
		else if (type == VariantType.arrayList) {
			var oldArray: ArrayList = value;
			var newArray = new ArrayList();
			for (i in 0...oldArray.size()) {
				newArray.append(dictToVar(oldArray.get(1)));
			}
			variant = newArray;
		}
		else if (type == VariantType.byteArray) {
			variant = MarshallsService.base64ToRaw(value);
		}
		else if (type == VariantType.int32Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Int> = untyped __lua__("_G.i32Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(oldArray.get(0));
			}
			variant = newArray;
		}
		else if (type == VariantType.int64Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Int> = untyped __lua__("_G.i32Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(oldArray.get(0));
			}
			variant = newArray;
		}
		else if (type == VariantType.float32Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Float> = untyped __lua__("_G.f32Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(oldArray.get(0));
			}
			variant = newArray;
		}
		else if (type == VariantType.float64Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Float> = untyped __lua__("_G.f64Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(oldArray.get(0));
			}
			variant = newArray;
		}
		else if (type == VariantType.stringVector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<String> = untyped __lua__("_G.strArray()");
			for (i in 0...oldArray.size()) {
				newArray.add(oldArray.get(0));
			}
			variant = newArray;
		}
		else if (type == VariantType.vector2Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Vector2> = untyped __lua__("_G.v2Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(dictToVar(oldArray.get(0)));
			}
			variant = newArray;
		}
		else if (type == VariantType.vector3Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Vector3> = untyped __lua__("_G.v3Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(dictToVar(oldArray.get(0)));
			}
			variant = newArray;
		}
		else if (type == VariantType.vector4Vector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Vector4> = untyped __lua__("_G.v4Array()");
			for (i in 0...oldArray.size()) {
				newArray.add(dictToVar(oldArray.get(0)));
			}
			variant = newArray;
		}
		else if (type == VariantType.colorVector) {
			var oldArray: ArrayList = value;
			var newArray: TypedArray<Color> = untyped __lua__("_G.clrArray()");
			for (i in 0...oldArray.size()) {
				newArray.add(dictToVar(oldArray.get(0)));
			}
			variant = newArray;
		}
		else if (type == VariantType.object) {
			var resDict: Dictionary = value;
			var className = resDict.get("class");
			var nativeObj = new NativeObject(className);
			if (nativeObj.isClass("Resource")) {
				variant = dictToRes(resDict, ioInterface);
			}
		}

		return variant;
	}

	public static function resToDict(res: NativeReference): Dictionary {
		var data = new Dictionary();
		var path: String = res.get("resource_path");
		data.set("path", path);
		data.set("class", res.getClass());
		if (path != "") {
			var metaList = res.getMetaList();
			var propertyList = res.getPropertyList();
			var properties = new Dictionary();
			for (i in 0...propertyList.count()) {
				var prop: Dictionary = propertyList.get(i);
				var name: String = prop.get("name");
				if (res.get(name).getType() == VariantType.nil) {
					continue;
				}
				var value: Dictionary = varToDict(res.get(name));
				properties.set(name, value);
			}
			data.set("properties", properties);
		}
		return data;
	}

	public static function dictToRes(dict: Dictionary, ?ioInterface: IoInterface): NativeReference {
		var path = dict.get("path");
		var className = dict.get("class");
		if (path != "" && !dict.has("properties")) {
			if (ioInterface != null) {
				var jsonStr = ioInterface.loadText(path);
				var json = new JSON();
				var err = json.parse(jsonStr);
				if (err == Error.ok) {
					var jsonDict = json.data;
					return dictToRes(jsonDict, ioInterface);
				}
			}
		}
		var nativeReference = new NativeReference(className);
		if (nativeReference.isValid()) {
			var properties: Dictionary = dict.get("properties");
			var propKeys = properties.keys();
			var propValues = properties.values();
			for (i in 0...propKeys.size()) {
				var key = propKeys.get(i);
				var value = dictToVar(propValues.get(i), ioInterface);
				nativeReference.set(key, value);
			}
		}
		return nativeReference;
	}
}
