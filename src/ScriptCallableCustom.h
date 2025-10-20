#pragma once

#include <godot_cpp/variant/callable_custom.hpp>
#include <sol/sol.hpp>

#include "ScriptObject.h"

using namespace godot;

class ScriptCallableCustom : public CallableCustom {
	sol::function lua_func;
public:
	ScriptCallableCustom(sol::function func) : lua_func((func)) {}

	virtual Object *get_object() const override { return nullptr; }
	virtual StringName get_method() const override { return StringName(); }
	virtual uint32_t hash() const override { return (uint32_t)(size_t)this; }
	virtual bool equals(const CallableCustom *p_other) const override {
		return this == p_other;
	}

	virtual Variant call(const Variant **p_args, int p_argcount, Callable::CallError &r_error) const override {
		if (!lua_func.valid()) {
			r_error.error = Callable::CallError::CALL_ERROR_INVALID_METHOD;
			return Variant();
		}

		std::vector<Variant> var_args;
		var_args.reserve(p_argcount);
		for (int i = 0; i < p_argcount; i++) {
			var_args.emplace_back(*p_args[i]);
		}

		try {
			sol::object result = lua_func(sol::as_args(var_args));
			r_error.error = Callable::CallError::CALL_OK;
			return ScriptObject::solToGd(result);
		} catch (...) {
			r_error.error = Callable::CallError::CALL_ERROR_INVALID_METHOD;
		}
		return Variant();
	}
};


Callable make_callable_from_sol(sol::function func) {
	return Callable(memnew(LuaCallableCustom(func)));
}
