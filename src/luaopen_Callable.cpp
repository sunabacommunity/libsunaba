#include "Runtime.h"
#include "ScriptCallableCustom.h"
#include "ScriptObject.h"
#include "NativeObject.h"
#include "NativeReference.h"

void Runtime::luaopen_Callable() {
	auto ut = lua_state.new_usertype<Callable>("Callable",
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
		"getObject", [](Callable callable) {
			return new NativeObject(callable.get_object());
		},
		"getReference", [](Callable callable) {
			return new NativeReference(
				Ref<RefCounted>(
					Object::cast_to<RefCounted>(
						callable.get_object()
					)
				)
			);
		},
		"getUnboundArgumentsCount", &Callable::get_unbound_arguments_count,
		"hash", &Callable::hash,
		"isCustom", &Callable::is_custom,
		"isNull", &Callable::is_null,
		"isStandard", &Callable::is_standard,
		"isValid", &Callable::is_valid,
		"unbind", &Callable::unbind
	);

	ut["eq"] = [](const Callable& a, const Callable& b) {
		return a == b;
	};
}
