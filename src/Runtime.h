#pragma once

#include <godot_cpp/classes/node.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <sol/sol.hpp>

using namespace godot;

class Runtime : public Node {
	GDCLASS(Runtime, Node)

protected:
	static void _bind_methods();
};
