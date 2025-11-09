#include "Runtime.h"
#include "NativeReference.h"

void Runtime::luaopen_NativeReference_sandboxed(const Array &classnames) {
	auto ut = lua_state.new_usertype<NativeReference>("NativeReference",
            "new", sol::overload(
                [classnames](std::string name) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return new NativeReference(name);
                    }
                    else
                    {
                        return static_cast<NativeReference*>(nullptr);
                    }

                },
                [classnames](std::string name, const Array& args) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return new NativeReference(name, args);
                    }
                    else
                    {
                        return static_cast<NativeReference*>(nullptr);
                    }
                },
                [classnames](std::string name, const Array& args, int scriptType) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return new NativeReference(name, args, scriptType);
                    }
                    else
                    {
                        return static_cast<NativeReference*>(nullptr);
                    }
                }
            ),
            "__gc", sol::destructor([](NativeReference* ref) {
                delete ref;
            }),
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
            "hasMethod", &NativeReference::hasMethod,
            "setMeta", &NativeReference::setMeta,
            "isValid", &NativeReference::isValid,
            "isNull", &NativeReference::isNull
        );

	ut["eq"] = [](NativeReference* a, NativeReference* b) {
		return a->getNative() == b->getNative();
	};
}
