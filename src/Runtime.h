#pragma once

#include <godot_cpp/classes/node.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <LuaBridge/LuaBridge.h>

using namespace godot;

class Runtime : public Node {
	GDCLASS(Runtime, Node)

protected:
	static void _bind_methods();
};
