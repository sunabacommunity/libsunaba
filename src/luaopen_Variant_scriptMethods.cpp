#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_scriptMethods() {
    auto variant_type = lua_state["Variant"];

    variant_type["asTable"] = [this](const Variant& v) {
        Object* o = v;
        Ref<ScriptObject> obj = Ref<ScriptObject>(
            Object::cast_to<ScriptObject>(
                o
            )
        );
        if (obj.is_valid()) {
            return sol::make_object(lua_state, obj->object);
        }
        else {
            return sol::make_object(lua_state, sol::lua_nil);
        }
    };

    variant_type["asFunction"] = [](const Variant& v) {
        Ref<RefCounted> ref = v;
        Ref<ScriptFunction> funcObj = Ref<ScriptFunction>(
                Object::cast_to<ScriptFunction>(
                    ref.ptr()
            )
        );
        return funcObj->func;
    };
}
