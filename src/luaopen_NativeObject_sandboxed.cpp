#include "Runtime.h"
#include "NativeObject.h"

void Runtime::luaopen_NativeObject_sandboxed(const Array &classnames) {
	auto ut = lua_state.new_usertype<NativeObject>("NativeObject",
            "new", sol::overload(
                [classnames](std::string name) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeObject>(name);
                    }
                    else
                    {
                        return std::unique_ptr<NativeObject>(nullptr);
                    }

                },
                [classnames](std::string name, const Array& args) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeObject>(name, args);
                    }
                    else
                    {
                        return std::unique_ptr<NativeObject>(nullptr);
                    }
                },
                [classnames](std::string name, const Array& args, int scriptType) {
                    if (classnames.has( String(name.c_str()) ))
                    {
                        return std::make_unique<NativeObject>(name, args, scriptType);
                    }
                    else
                    {
                        return std::unique_ptr<NativeObject>(nullptr);
                    }
                }
            ),
            "callStatic", [classnames](std::string classname, std::string methodname, const Array& args) {
                if (!classnames.has( String(classname.c_str()) ))
                {
                    return Variant();
                }
                return NativeObject::callStatic( classname, methodname, args );
            },
            "getService", [classnames](std::string classname) {
                if (!classnames.has( String(classname.c_str()) ))
                {
                    return std::unique_ptr<NativeObject>(nullptr);
                }
                return NativeObject::getService( classname );
            },
            "call", &NativeObject::call,
            "get", &NativeObject::get,
            "set", &NativeObject::set,
            "getClass", &NativeObject::getClass,
            "isClass", &NativeObject::isClass,
            "getMeta", sol::overload(
                [](NativeObject* obj, std::string name) {
                    return obj->getMeta( name );
                },
                [](NativeObject* obj, std::string name, Variant _default) {
                    return obj->getMeta( name, _default );
                }
            ),
            "getMetaList", &NativeObject::getMetaList,
            "getMethodArgumentCount", &NativeObject::getMethodArgumentCount,
            "getMethodList", &NativeObject::getMethodList,
            "getPropertyList", &NativeObject::getPropertyList,
            "hasMeta", &NativeObject::hasMeta,
            "hasMethod", &NativeObject::hasMethod,
            "setMeta", &NativeObject::setMeta,
            "isNull", &NativeObject::isNull
        );

	ut["eq"] = [](NativeObject* a, NativeObject* b) {
		return a->getNative() == b->getNative();
	};
}
