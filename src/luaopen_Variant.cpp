#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant() {
	// Initialize the Variant usertype with constructors first
	luaopen_Variant_constructors();

	// Add all the from* methods
	luaopen_Variant_fromMethods();

	// Add all the as* methods (basic types)
	luaopen_Variant_asMethods();

	// Add all the array-related as* methods
	luaopen_Variant_arrayMethods();

	// Add object-related as* methods
	luaopen_Variant_objectMethods(Array());

	// Add script-related as* methods
	luaopen_Variant_scriptMethods();

	auto variant_type = lua_state["Variant"];

	variant_type["eq"] = [](const Variant& a, const Variant& b) {
		return a == b;
	};
}
