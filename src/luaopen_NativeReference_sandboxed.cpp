#include "Runtime.h"
#include "NativeReference.h"

void Runtime::luaopen_NativeReference_sandboxed(const Array &classnames) {
	lua_state.new_usertype<NativeReference>("NativeReference",
            "new", sol::overload(
                [classnames](std::string name) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeReference>(name);
                    }
                    else
                    {
                        return std::unique_ptr<NativeReference>(nullptr);
                    }

                },
                [classnames](std::string name, const Array& args) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeReference>(name, args);
                    }
                    else
                    {
                        return std::unique_ptr<NativeReference>(nullptr);
                    }
                },
                [classnames](std::string name, const Array& args, int scriptType) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeReference>(name, args, scriptType);
                    }
                    else
                    {
                        return std::unique_ptr<NativeReference>(nullptr);
                    }
                }
            ),
            "call", &NativeReference::call,
            "get", &NativeReference::get,
            "set", &NativeReference::set,
            "getClass", &NativeReference::getClass,
            "isClass", &NativeReference::isClass,
            "getMeta", sol::overload(
                [](NativeReference* obj, std::string name) {
                    return obj->getMeta( name );
                },
                [](NativeReference* obj, std::string name, Variant _default) {
                    return obj->getMeta( name, _default );
                }
            ),
            "getMetaList", &NativeReference::getMetaList,
            "getMethodArgumentCount", &NativeReference::getMethodArgumentCount,
            "getMethodList", &NativeReference::getMethodList,
            "getPropertyList", &NativeReference::getPropertyList,
            "hasMeta", &NativeReference::hasMeta,
            "setMeta", &NativeReference::setMeta,
            "isValid", &NativeReference::isValid,
            "isNull", &NativeReference::isNull
        );
}
