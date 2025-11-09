#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_objectMethods() {
    auto variant_type = lua_state["Variant"];

    variant_type["asObject"] = [](const Variant& v) {
        Object* gdobj = v.operator Object*();
        if (gdobj) {
            return new NativeObject(gdobj);
        }
        return static_cast<NativeObject*>(nullptr);
    };

    variant_type["asReference"] = [](const Variant& v) {
        Ref<RefCounted> ref = v;
        if (ref.is_valid() && !ref.is_null()) {
            return new NativeReference(ref);
        }
        return static_cast<NativeReference*>(nullptr);
    };
}
