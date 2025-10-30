#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_asMethods() {
    auto variant_type = lua_state["Variant"];

    variant_type["getType"] = &Variant::get_type;
    variant_type["getTypeName"] = &Variant::get_type_name;

    variant_type["asString"] = [](const Variant& v) {
        return std::string((v.operator String()).utf8().get_data());
    };

    variant_type["asInt"] = &Variant::operator int;
    variant_type["asFloat"] = &Variant::operator float;
    variant_type["asBool"] = &Variant::operator bool;
    variant_type["asVector2"] = &Variant::operator Vector2;
    variant_type["asVector2i"] = &Variant::operator Vector2i;
    variant_type["asRect2"] = &Variant::operator Rect2;
    variant_type["asRect2i"] = &Variant::operator Rect2i;
    variant_type["asBasis"] = &Variant::operator Basis;
    variant_type["asVector3"] = &Variant::operator Vector3;
    variant_type["asVector3i"] = &Variant::operator Vector3i;
    variant_type["asTransform2D"] = &Variant::operator Transform2D;
    variant_type["asTransform3D"] = &Variant::operator Transform3D;
    variant_type["asVector4"] = &Variant::operator Vector4;
    variant_type["asVector4i"] = &Variant::operator Vector4i;
    variant_type["asPlane"] = &Variant::operator Plane;
    variant_type["asQuaternion"] = &Variant::operator Quaternion;
    variant_type["asAABB"] = &Variant::operator godot::AABB;
    variant_type["asProjection"] = &Variant::operator Projection;
    variant_type["asArrayList"] = &Variant::operator Array;
    variant_type["asDictionary"] = &Variant::operator Dictionary;
    variant_type["asColor"] = &Variant::operator Color;
    variant_type["asCallable"] = &Variant::operator Callable;
    variant_type["asSignal"] = &Variant::operator Signal;

    variant_type["tostring"] = [](const Variant& v) {
        return std::string((v.operator String()).utf8().get_data());
    };
}
