#pragma once

#include <godot_cpp/classes/ref_counted.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <sol/sol.hpp>

#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptObject.h"

using namespace godot;

class ScriptFunction : public RefCounted {
	GDCLASS(ScriptFunction, RefCounted)
protected:
	static void _bind_methods();

public:
	sol::function func;

	ScriptFunction() {}

	Variant call(Array args) {
		std::vector<sol::object> _args;
		for (int i = 0; i < args.size(); i++)
		{
			_args.push_back( ScriptObject::gdToSol(args[i], func.lua_state()) );
		}

		sol::protected_function_result result = func( sol::as_args(_args));

		if (!result.valid()) {
			sol::error err = result;
			UtilityFunctions::printerr("Error: ", err.what());
			sol::state_view lua_state = func.lua_state();
			sol::function errord = lua_state["__errord"];
			if (errord.valid())
			{
				errord(err.what(), "Script Error");
			}
			return Variant();
		}

		sol::object ret = result.get<sol::object>();
		return ScriptObject::solToGd(ret);
	}
};
