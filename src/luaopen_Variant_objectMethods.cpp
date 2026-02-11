#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_objectMethods(const Array &classnames) {
    auto variant_type = lua_state["Variant"];

    variant_type["asObject"] = [classnames](const Variant& v) {
        Object* gdobj = v.operator Object*();
        
        if (classnames.size() != 0) {
            if (!classnames.has(gdobj->get_class())) {
                return std::unique_ptr<NativeObject>(nullptr);
            }
        }

        if (gdobj) {
            return std::make_unique<NativeObject>(gdobj);
        }
        return std::unique_ptr<NativeObject>(nullptr);
    };

    variant_type["asReference"] = [classnames](const Variant& v) {
        Ref<RefCounted> ref = v;

        if (classnames.size() != 0) {
            if (!classnames.has(ref->get_class())) {
                return std::unique_ptr<NativeReference>(nullptr);
            }
        }

        if (ref.is_valid() && !ref.is_null()) {
            return std::make_unique<NativeReference>(ref);
        }
        return std::unique_ptr<NativeReference>(nullptr);
    };
}
