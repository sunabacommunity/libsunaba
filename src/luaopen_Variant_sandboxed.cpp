#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_sandboxed(const Array &classnames) {
	lua_state.new_usertype<Variant>("Variant",
        sol::constructors<
            Variant(),
            Variant(int),
            Variant(float),
            Variant(bool),
            //Variant(long),
            //Variant(double),
            Variant(String),
            Variant(Vector2),
            Variant(Vector2i),
            Variant(Rect2),
            Variant(Rect2i),
            Variant(Basis),
            Variant(Vector3),
            Variant(Vector3i),
            Variant(Transform2D),
            Variant(Transform3D),
            Variant(Vector4),
            Variant(Vector4i),
            Variant(Plane),
            Variant(Quaternion),
            Variant(AABB),
            Variant(Color),
            Variant(Projection),
            //Variant(Array),
            Variant(Dictionary),
			Variant(Callable),
			Variant(Signal)>(),
        "fromArrayList", [](const Array& arr) {
			return Variant(arr);
	    },
        "fromByteArray", [](const io::ByteArray& data) { return Variant(data.toPackedByteArray()); },
        "fromIntArray", [](const std::vector<int>& data) {
            PackedInt32Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
         },
         "fromIntArray64", [](const std::vector<int64_t>& data) {
            PackedInt64Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
         },
         "fromFloatArray", [](const std::vector<float>& data) {
            PackedFloat32Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
         },
         "fromFloatArray64", [](const std::vector<double>& data) {
            PackedFloat64Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
         },
         "fromStringArray", [](const std::vector<String>& data) {
            PackedStringArray packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
         },
        "fromString", [](const std::string& str) {
            return Variant(String(str.c_str()));
         },
        "fromVector2Array", [](const std::vector<Vector2>& data) {
            PackedVector2Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
        },
        "fromVector3Array", [](const std::vector<Vector3>& data) {
            PackedVector3Array packed_data;
            for (const auto& item : data) {
                packed_data.append(item);
            }
            return Variant(packed_data);
        },
        "fromObject", [](NativeObject* obj) {
			  return Variant(obj->getNative());
		 },
		 "fromReference", [](NativeReference* obj) {
			  return Variant(obj->getNative());
		 },
         "fromInt64", [](int64_t value) {
            return Variant(value);
         },
         "fromFloat64", [](double value) {
            return Variant(value);
         },
         "fromTable", [](sol::table table) {
			auto* scriptObject = memnew( ScriptObject );
			scriptObject->object = table;
			return Variant(scriptObject);
		 },
		 "fromFunction", [](sol::function func) {
			 auto funcObj = Ref<ScriptFunction>(memnew(ScriptFunction));
			 funcObj->func = func;
			 return Variant(funcObj);
		 },
        "getType", &Variant::get_type,
        "getTypeName", &Variant::get_type_name,
        "asString", [](const Variant& v) { return std::string((v.operator String()).utf8().get_data()); },
        "asInt", &Variant::operator int,
        "asFloat", &Variant::operator float,
        "asBool", &Variant::operator bool,
        "asVector2", &Variant::operator Vector2,
        "asVector2i", &Variant::operator Vector2i,
        "asRect2", &Variant::operator Rect2,
        "asRect2i", &Variant::operator Rect2i,
        "asBasis", &Variant::operator Basis,
        "asVector3", &Variant::operator Vector3,
        "asVector3i", &Variant::operator Vector3i,
        "asTransform2D", &Variant::operator Transform2D,
        "asVector4", &Variant::operator Vector4,
        "asVector4i", &Variant::operator Vector4i,
        "asPlane", &Variant::operator Plane,
        "asQuaternion", &Variant::operator Quaternion,
        "asAABB", &Variant::operator godot::AABB,
        "asProjection", &Variant::operator Projection,
        "asArrayList", &Variant::operator Array,
        "asDictionary", &Variant::operator Dictionary,
        "asByteArray", [](const Variant& v) { return io::ByteArray(v); },
        "asIntArray", [](const Variant& v) {
            PackedInt32Array packed_data = v;
            std::vector<int> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asIntArray64", [](const Variant& v) {
            PackedInt64Array packed_data = v;
            std::vector<int64_t> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asFloatArray", [](const Variant& v) {
            PackedFloat32Array packed_data = v;
            std::vector<float> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asFloatArray64", [](const Variant& v) {
            PackedFloat64Array packed_data = v;
            std::vector<double> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asStringArray", [](const Variant& v) {
            PackedStringArray packed_data = v;
            std::vector<std::string> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i].utf8().get_data());
            }
            return data;
        },
        "asVector2Array", [](const Variant& v) {
            PackedVector2Array packed_data = v;
            std::vector<Vector2> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asVector3Array", [](const Variant& v) {
            PackedVector3Array packed_data = v;
            std::vector<Vector3> data;
            for (int i = 0; i < packed_data.size(); ++i) {
                data.push_back(packed_data[i]);
            }
            return data;
        },
        "asObject",  [classnames](const Variant& v) {
			Object* gdobj = v.operator Object*();
			if (gdobj) {
				if (classnames.has(gdobj->get_class())) {
					return new NativeObject(gdobj);
				}
			}
			return static_cast<NativeObject*>(nullptr);
		 },
		 "asReference",  [classnames](const Variant& v) {
			Ref<RefCounted> ref = v;
			if (ref.is_valid() && !ref.is_null()) {
				if (classnames.has(ref->get_class())) {
					return std::make_unique<NativeReference>(ref);
				}
			}
			return std::unique_ptr<NativeReference>(nullptr);
		 },
		 "asTable", [this](const Variant& v) {
			Object* o = v;
			Ref<ScriptObject> obj = Ref<ScriptObject>(
				Object::cast_to<ScriptObject>(
					o
				)
			);
			if (obj.is_valid() && obj.is_null()) {
				return sol::make_object(lua_state, obj->object);
			}
			else {
				return sol::make_object(lua_state, sol::lua_nil);
			}
		},
		"asFunction", [](const Variant& v) {
			Ref<RefCounted> ref = v;
			Ref<ScriptFunction> funcObj = Ref<ScriptFunction>(
					Object::cast_to<ScriptFunction>(
						ref.ptr()
				)
			);
			return funcObj->func;
		},
		"asCallable", &Variant::operator Callable,
		"asSignal", &Variant::operator Signal,
        "tostring", [](const Variant& v) { return std::string((v.operator String()).utf8().get_data()); }
    );

	lua_state["__rootNode"] = new NativeObject(this);

	lua_state["__errord"] = [this](const std::string &msg, const std::string& title) {
		_errord(msg.c_str(), title.c_str());
	};

	lua_state["__warnd"] = [this](const std::string &msg, const std::string& title) {
		_warnd(msg.c_str(), title.c_str());
	};

	lua_state["__infod"] = [this](const std::string &msg, const std::string& title) {
		_infod(msg.c_str(), title.c_str());
	};
}
