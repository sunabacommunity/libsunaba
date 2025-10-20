#pragma once
#include <godot_cpp/variant/callable_custom.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <godot_cpp/variant/string_name.hpp>
#include <godot_cpp/variant/string.hpp>
#include <godot_cpp/core/object_id.hpp>
#include <sol/sol.hpp>

#include "ScriptObject.h"


class ScriptCallableCustom : public godot::CallableCustom {
	sol::function lua_func;

	sol::table table;

	std::string memberName;

public:
	ScriptCallableCustom(sol::function func) : lua_func(func) {}
	ScriptCallableCustom(sol::table obj, std::string p_memberName) : table(obj), memberName(p_memberName) {
		sol::object funcobj = table[memberName];
		if (funcobj.is<sol::function>()) {
			lua_func = funcobj;
		}
	}
	ScriptCallableCustom(sol::table obj, sol::function func) : table(obj), lua_func(func) {
		for (auto pair : obj) {
			if (pair.second == func) {
				memberName = pair.first.as<std::string>();
			}
		}
	}

	virtual godot::ObjectID get_object() const override {
		// We are not tied to any Godot object, so return null ID.
		return ObjectID();
	}

	virtual godot::String get_as_text() const override {
		return "[Lua callable]";
	}

	virtual CompareEqualFunc get_compare_equal_func() const override {
		return nullptr; // Can be implemented if needed
	}

	virtual CompareLessFunc get_compare_less_func() const override {
		return nullptr; // Can be implemented if needed
	}

	virtual uint32_t hash() const override {
		return (uint32_t)(uintptr_t)lua_func.pointer();
	}

	virtual void call(
		const godot::Variant **p_arguments,
		int p_argcount,
		godot::Variant &r_return_value,
		GDExtensionCallError &r_call_error
	) const override {
		if (!lua_func.valid()) {
			r_call_error.error = GDEXTENSION_CALL_ERROR_INVALID_METHOD;
			return;
		}

		std::vector<Variant> args;
		args.reserve(p_argcount);
		for (int i = 0; i < p_argcount; i++) {
			args.emplace_back(*p_arguments[i]);
		}

		// No try/catch -> assume exception-free Lua
		sol::protected_function_result result = lua_func(sol::as_args(args));

		if (result.valid()) {
			r_return_value = ScriptObject::solToGd(result);
			r_call_error.error = GDEXTENSION_CALL_OK;
		} else {
			r_call_error.error = GDEXTENSION_CALL_ERROR_INVALID_METHOD;
		}
	}
};

static Callable make_callable_from_sol(sol::function func) {
	return godot::Callable(memnew(ScriptCallableCustom(func)));
}

static Callable make_callable_from_sol(sol::table obj, sol::function func) {
	return godot::Callable(memnew(ScriptCallableCustom( obj, func)));
}

static Callable make_callable_from_sol(sol::table obj, std::string name) {
	return godot::Callable(memnew(ScriptCallableCustom( obj, name)));
}
