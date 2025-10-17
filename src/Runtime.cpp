#include "Runtime.h"
#include <godot_cpp/variant/utility_functions.hpp>

void Runtime::_bind_methods() {

}

void Runtime::_process(double delta) {
	lua_state.collect_garbage();
}

void Runtime::_print(const Array &msgarr) {
	String msg;
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
