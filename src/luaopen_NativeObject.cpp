#include "Runtime.h"
#include "NativeObject.h"

void Runtime::luaopen_NativeObject() {
	auto ut = lua_state.new_usertype<NativeObject>("NativeObject",
			"new", sol::overload(
				[](std::string name) {
					return new NativeObject(name);
				},
				[](std::string name, const Array& args) {
					return new NativeObject(name, args);
				},
				[](std::string name, const Array& args, int scriptType) {
					return new NativeObject(name, args, scriptType);
				}
			),
			"__gc", sol::destructor([](NativeObject* obj) {
                delete obj;
            }),
			"callStatic", &NativeObject::callStatic,
			"getService", &NativeObject::getService,
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
