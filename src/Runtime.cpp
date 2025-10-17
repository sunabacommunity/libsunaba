#include "Runtime.h"

void Runtime::_bind_methods() {

}

void Runtime::_process(double delta) {
	lua_state.collect_garbage();
}
