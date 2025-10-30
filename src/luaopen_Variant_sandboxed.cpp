#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_sandboxed(const Array &classnames) {
	// Initialize the Variant usertype with constructors first
	luaopen_Variant_constructors();

	// Add all the from* methods
	luaopen_Variant_fromMethods();

	// Add all the as* methods (basic types)
	luaopen_Variant_asMethods();

	// Add all the array-related as* methods
	luaopen_Variant_arrayMethods();

	// Add object-related as* methods (these might need filtering based on classnames)
	luaopen_Variant_objectMethods();

	// Add script-related as* methods
	luaopen_Variant_scriptMethods();

	// Note: In a full implementation, you might want to filter object/reference methods
	// based on the allowed classnames, but for now we use the same methods as non-sandboxed
}
