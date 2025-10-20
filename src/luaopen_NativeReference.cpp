#include "Runtime.h"
#include "NativeReference.h"

void Runtime::luaopen_NativeReference() {
	lua_state.new_usertype<NativeReference>("NativeReference",
			"new", sol::overload(
				[](std::string name) {
					return std::make_unique<NativeReference>(name);
				},
				[](std::string name, const Array& args) {
					return std::make_unique<NativeReference>(name, args);
				},
				[](std::string name, const Array& args, int scriptType) {
					return std::make_unique<NativeReference>(name, args, scriptType);
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
			"hasMethod", &NativeReference::hasMethod,
			"setMeta", &NativeReference::setMeta,
			"isValid", &NativeReference::isValid,
			"isNull", &NativeReference::isNull
		);
}
