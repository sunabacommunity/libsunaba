#include "Runtime.h"
#include "NativeObject.h"
#include "NativeReference.h"

void Runtime::luaopen_Signal() {
	auto ut = lua_state.new_usertype<Signal>("Signal",
		"new", sol::overload(
			[]() {
				return Signal();
			},
			[](NativeObject* object, std::string name) {
				return Signal(object->getNative(), name.c_str());
			},
			[](NativeReference* ref, std::string name) {
				return Signal(ref->getNative().ptr(), name.c_str());
			}
		),
		"connect", sol::overload(
			[](Signal signal, Callable callable) {
				return signal.connect(callable);
			},
			[](Signal signal, Callable callable, int flags) {
				return signal.connect(callable, flags);
			}
		),
		"disconnect", &Signal::disconnect,
		"emit", [](Signal signal, const Array& args) {
			Array signalArgs;
			signalArgs.append(signal.get_name());
			for (int i = 0; 0 < args.size(); i++) {
				signalArgs.append(args[i]);
			}
			signal.get_object()->callv("emit_signal", signalArgs);
		},
		"getConnections", &Signal::get_connections,
		"getName", [](Signal signal) {
			return String(signal.get_name()).utf8().get_data();
		},
		"getObject", [](Signal signal) {
			return std::make_unique<NativeObject>(signal.get_object());
		},
		"getReference", [](Signal signal) {
			return std::make_unique<NativeReference>(
				Ref<RefCounted>(
					Object::cast_to<RefCounted>(
						signal.get_object()
					)
				)
			);
		},
		"hasConnections", &Signal::has_connections,
		"isConnected", &Signal::is_connected,
		"isNull", &Signal::is_null
	);

	ut["eq"] = [](const Signal& a, const Signal& b) {
		return a == b;
	};
}
