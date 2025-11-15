#include "JavaScriptContext.h"

#include <godot_cpp/core/class_db.hpp>

using namespace godot;

void JavaScriptContext::_bind_methods() {
	// Binding methods can be added here if needed

	ClassDB::bind_method(D_METHOD("eval", "code"), &JavaScriptContext::eval);
	ClassDB::bind_method(D_METHOD("bind_variant"), &JavaScriptContext::bind_variant);
	ClassDB::bind_method(D_METHOD("bind_array"), &JavaScriptContext::bind_array);
	ClassDB::bind_method(D_METHOD("bind_dictionary"), &JavaScriptContext::bind_dictionary);
	ClassDB::bind_method(D_METHOD("bind_vector2"), &JavaScriptContext::bind_vector2);
	ClassDB::bind_method(D_METHOD("bind_rect2"), &JavaScriptContext::bind_rect2);
	ClassDB::bind_method(D_METHOD("bind_vector2i"), &JavaScriptContext::bind_vector2i);
	ClassDB::bind_method(D_METHOD("bind_rect2i"), &JavaScriptContext::bind_rect2i);
	ClassDB::bind_method(D_METHOD("bind_vector3"), &JavaScriptContext::bind_vector3);
	ClassDB::bind_method(D_METHOD("bind_vector3i"), &JavaScriptContext::bind_vector3i);
	ClassDB::bind_method(D_METHOD("bind_vector4"), &JavaScriptContext::bind_vector4);
	ClassDB::bind_method(D_METHOD("bind_vector4i"), &JavaScriptContext::bind_vector4i);
	ClassDB::bind_method(D_METHOD("bind_quaternion"), &JavaScriptContext::bind_quaternion);
	ClassDB::bind_method(D_METHOD("bind_basis"), &JavaScriptContext::bind_basis);
	ClassDB::bind_method(D_METHOD("bind_transform3d"), &JavaScriptContext::bind_transform3d);
	ClassDB::bind_method(D_METHOD("bind_transform2d"), &JavaScriptContext::bind_transform2d);
	ClassDB::bind_method(D_METHOD("bind_aabb"), &JavaScriptContext::bind_aabb);
	ClassDB::bind_method(D_METHOD("bind_color"), &JavaScriptContext::bind_color);
}
