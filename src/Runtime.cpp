#include "Runtime.h"
#include <godot_cpp/variant/utility_functions.hpp>

void Runtime::_bind_methods() {

}

void Runtime::_process(double delta) {
	lua_state.collect_garbage();
}

void Runtime::_print(const Array &msgarr) {
	String msg = String("");
	for (int i = 0; i < msgarr.size(); i++) {
		if (!msg.is_empty()) {
			msg += ", ";
		}
		msg += msgarr[i];
	}
	UtilityFunctions::print(msg);
}

void Runtime::_errord(const String &msg, const String &title) {
	UtilityFunctions::push_error(title + String(": ") + msg);
}

void Runtime::_warnd(const String &msg, const String &title) {
	UtilityFunctions::push_warning(title + String(": ") + msg);
}

void Runtime::_infod(const String &msg, const String &title) {
	UtilityFunctions::print(title + String(": ") + msg);
}

void Runtime::do_string(const String &code) {
	lua_state.do_string(code.utf8().get_data());
}

void Runtime::set_var(const String &name, const Variant &variant) {
	lua_state[name.utf8().get_data()] = sol::make_object(lua_state, variant);
}

void Runtime::initState(bool p_sandboxed) {
	luaopen_AABB();
	luaopen_ArrayList();
	luaopen_Basis();
	luaopen_Color();
	luaopen_Dictionary();
	luaopen_Quaternion();
	luaopen_Rect2();
	luaopen_Rect2i();
	luaopen_Transform2D();
	luaopen_Transform3D();
	luaopen_Vector2();
	luaopen_Vector2i();
	luaopen_Vector3();
	luaopen_Vector3i();
	luaopen_Vector4();
	luaopen_Vector4i();
	if (!p_sandboxed) {
		luaopen_Variant();
	}
}
