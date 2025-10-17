#pragma once

#include <godot_cpp/classes/node.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <sol/sol.hpp>

using namespace godot;

class Runtime : public Node {
	GDCLASS(Runtime, Node)

protected:
	static void _bind_methods();

public:
	Runtime();
	~Runtime();

	sol::state lua_state;

	std::vector<std::string> args;
	PackedStringArray getArgs() const { 
		PackedStringArray arr;
		for (const auto& arg : args) {
			arr.append(String(arg.c_str()));
		}
		return arr;
	}
	void setArgs(const PackedStringArray& p_args) {
		args.clear();
		for (int i = 0; i < p_args.size(); i++) {
			args.push_back(p_args[i].utf8().get_data());
		}
	}

	std::vector<std::string> allowed_classes;
	PackedStringArray getAllowedClasses() const { 
		PackedStringArray arr;
		for (const auto& cls : allowed_classes) {
			arr.append(String(cls.c_str()));
		}
		return arr;
	}
	void setAllowedClasses(const PackedStringArray& p_classes) {
		allowed_classes.clear();
		for (int i = 0; i < p_classes.size(); i++) {
			allowed_classes.push_back(p_classes[i].utf8().get_data());
		}
	}

	void _process(double delta) override;

	void initState(bool p_sandboxed = false);

	void luaopen_variant();
    void luaopen_array_list();
    void luaopen_dictionary();
    void luaopen_vector2();
    void luaopen_rect2();
    void luaopen_vector2i();
    void luaopen_rect2i();
    void luaopen_vector3();
    void luaopen_vector3i();
    void luaopen_vector4();
    void luaopen_vector4i();
    void luaopen_quaternion();
    void luaopen_basis();
    void luaopen_transform3d();
    void luaopen_aabb();
    void luaopen_color();
};
