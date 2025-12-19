#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_arrayMethods() {
    auto variant_type = lua_state["Variant"];

    variant_type["asByteArray"] = [](const Variant& v) {
        return io::ByteArray(v);
    };

    variant_type["asIntArray"] = [](const Variant& v) {
        std::vector<int> data;
        if (v.get_type() != Variant::PACKED_INT32_ARRAY) return data;
        PackedInt32Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asIntArray64"] = [](const Variant& v) {
        std::vector<int64_t> data;
        if (v.get_type() != Variant::PACKED_INT64_ARRAY && v.get_type() != Variant::PACKED_INT32_ARRAY) return data;
    	if (v.get_type() == Variant::PACKED_INT32_ARRAY) {
    		PackedInt32Array packed_data = v;
    		for (int i = 0; i < packed_data.size(); ++i) {
    			data.push_back(packed_data[i]);
    		}
    		return data;
    	}
        PackedInt64Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asFloatArray"] = [](const Variant& v) {
        std::vector<float> data;
        if (v.get_type() != Variant::PACKED_FLOAT32_ARRAY) return data;
        PackedFloat32Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asFloatArray64"] = [](const Variant& v) {
        std::vector<double> data;
        if (v.get_type() != Variant::PACKED_FLOAT64_ARRAY) return data;
        PackedFloat64Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asStringArray"] = [](const Variant& v) {
        std::vector<std::string> data;
        if (v.get_type() != Variant::PACKED_STRING_ARRAY) return data;
        PackedStringArray packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i].utf8().get_data());
        }
        return data;
    };

    variant_type["asVector2Array"] = [](const Variant& v) {
        std::vector<Vector2> data;
        if (v.get_type() != Variant::PACKED_VECTOR2_ARRAY) return data;
        PackedVector2Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asVector3Array"] = [](const Variant& v) {
        std::vector<Vector3> data;
        if (v.get_type() != Variant::PACKED_VECTOR3_ARRAY) return data;
        PackedVector3Array packed_data = v;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };
}
