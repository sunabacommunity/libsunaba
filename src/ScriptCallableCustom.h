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

	static bool compare_equal(const CallableCustom *a, const CallableCustom *b) {
		return a == b;
	}

	static bool equal_func(const CallableCustom *a, const CallableCustom *b) {
		auto *ca = static_cast<const ScriptCallableCustom *>(a);
		auto *cb = static_cast<const ScriptCallableCustom *>(b);
		return ca->lua_func.pointer() == cb->lua_func.pointer();
	}

	virtual CompareEqualFunc get_compare_equal_func() const override {
		return &equal_func;
	}

	static bool less_func(const CallableCustom *a, const CallableCustom *b) {
		auto *ca = static_cast<const ScriptCallableCustom *>(a);
		auto *cb = static_cast<const ScriptCallableCustom *>(b);
		return ca->lua_func.pointer() < cb->lua_func.pointer();
	}

	virtual CompareLessFunc get_compare_less_func() const override {
		return &less_func;
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

		sol::variadic_args lua_args;
		std::vector<sol::object> sol_args;
		sol_args.reserve(p_argcount);

		// Convert Godot Variants to Lua-side objects
		for (int i = 0; i < p_argcount; i++) {
			sol::object obj = ScriptObject::gdToSol(*p_arguments[i], lua_func.lua_state());
			sol_args.emplace_back(obj);
		}

		// Call Lua function safely
		sol::protected_function_result result = lua_func(sol::as_args(sol_args));

		if (result.valid()) {
			r_return_value = ScriptObject::solToGd(result.get<sol::object>());
			r_call_error.error = GDEXTENSION_CALL_OK;
		} else {
			r_call_error.error = GDEXTENSION_CALL_ERROR_INVALID_METHOD;
		}
	}

};

static std::vector<ScriptCallableCustom*> g_created_callables;

static godot::Callable make_callable_from_sol(sol::function func) {
	auto* callableCustom = memnew(ScriptCallableCustom(func));
	g_created_callables.push_back(callableCustom); // keep alive for debugging
	UtilityFunctions::print("make_callable_from_sol: created ScriptCallableCustom ", (uint64_t)callableCustom);
	return godot::Callable(callableCustom);
}

static Callable make_callable_from_sol(sol::table obj, sol::function func) {
	return godot::Callable(memnew(ScriptCallableCustom( obj, func)));
}

static Callable make_callable_from_sol(sol::table obj, std::string name) {
	return godot::Callable(memnew(ScriptCallableCustom( obj, name)));
}
