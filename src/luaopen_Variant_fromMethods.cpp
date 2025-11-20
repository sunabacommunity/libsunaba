#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_fromMethods() {
    auto variant_type = lua_state["Variant"];

    variant_type["fromArrayList"] = [](const Array& arr) {
        return Variant(arr);
    };

    variant_type["fromByteArray"] = [](const io::ByteArray& data) {
        return Variant(data.toPackedByteArray());
    };

    variant_type["fromIntArray"] = [](const std::vector<int>& data) {
        PackedInt32Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromIntArray64"] = [](const std::vector<int64_t>& data) {
        PackedInt64Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromFloatArray"] = [](const std::vector<float>& data) {
        PackedFloat32Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromFloatArray64"] = [](const std::vector<double>& data) {
        PackedFloat64Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromStringArray"] = [](const std::vector<std::string>& data) {
        PackedStringArray packed_data;
        for (const std::string& item : data) {
            packed_data.append(item.c_str());
        }
        return Variant(packed_data);
    };

    variant_type["fromString"] = [](const std::string& str) {
        return Variant(String(str.c_str()));
    };

    variant_type["fromVector2Array"] = [](const std::vector<Vector2>& data) {
        PackedVector2Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromVector3Array"] = [](const std::vector<Vector3>& data) {
        PackedVector3Array packed_data;
        for (const auto& item : data) {
            packed_data.append(item);
        }
        return Variant(packed_data);
    };

    variant_type["fromObject"] = [](NativeObject* obj) {
        return Variant(obj->getNative());
    };

    variant_type["fromReference"] = [](NativeReference* obj) {
        return Variant(obj->getNative());
    };

    variant_type["fromInt64"] = [](int64_t value) {
        return Variant(value);
    };

    variant_type["fromFloat64"] = [](double value) {
        return Variant(value);
    };

    variant_type["fromTable"] = [](sol::table table) {
        auto* scriptObject = memnew(ScriptObject);
        scriptObject->object = table;
        return Variant(scriptObject);
    };

    variant_type["fromFunction"] = [](sol::function func) {
        auto funcObj = Ref<ScriptFunction>(memnew(ScriptFunction));
        funcObj->func = func;
        return Variant(funcObj);
    };
}
