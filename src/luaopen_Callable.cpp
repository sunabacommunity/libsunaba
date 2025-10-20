#include "Runtime.h"
#include "ScriptCallableCustom.h"
#include "ScriptObject.h"

void Runtime::luaopen_Callable() {
	lua_state.new_usertype<Callable>("Callable",
		"new", sol::overload(
			[](sol::function func) {
				return make_callable_from_sol(func);
			},
			[](sol::table obj, std::string name) {
				return make_callable_from_sol(obj, name);
			}
		),
		"bind", &Callable::bindv,
		"call", &Callable::callv,
		"getArgumentCount", &Callable::get_argument_count,
		"getBoundArguments", &Callable::get_bound_arguments,
		"getBoundArgumentsCount", &Callable::get_bound_arguments_count,
		"getMethod", &Callable::get_method,
		"getObject", &Callable::get_object,
		"getUnboundArgumentsCount", &Callable::get_unbound_arguments_count,
		"hash", &Callable::hash,
		"isCustom", &Callable::is_custom,
		"isNull", &Callable::is_null,
		"isStandard", &Callable::is_standard,
		"isValid", &Callable::is_valid,
		"unbind", &Callable::unbind
	);
}
