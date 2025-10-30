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
        PackedInt32Array packed_data = v;
        std::vector<int> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asIntArray64"] = [](const Variant& v) {
        PackedInt64Array packed_data = v;
        std::vector<int64_t> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asFloatArray"] = [](const Variant& v) {
        PackedFloat32Array packed_data = v;
        std::vector<float> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asFloatArray64"] = [](const Variant& v) {
        PackedFloat64Array packed_data = v;
        std::vector<double> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asStringArray"] = [](const Variant& v) {
        PackedStringArray packed_data = v;
        std::vector<std::string> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i].utf8().get_data());
        }
        return data;
    };

    variant_type["asVector2Array"] = [](const Variant& v) {
        PackedVector2Array packed_data = v;
        std::vector<Vector2> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };

    variant_type["asVector3Array"] = [](const Variant& v) {
        PackedVector3Array packed_data = v;
        std::vector<Vector3> data;
        for (int i = 0; i < packed_data.size(); ++i) {
            data.push_back(packed_data[i]);
        }
        return data;
    };
}
