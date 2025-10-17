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

	void do_string(const String& code);

	virtual void print(const Array& msgarr);

	virtual String& _require(const String& path) { return ""; }

	void luaopen_Variant();
    void luaopen_ArrayList();
    void luaopen_Dictionary();
    void luaopen_Vector2();
    void luaopen_Rect2();
    void luaopen_Vector2i();
    void luaopen_Rect2i();
    void luaopen_Vector3();
    void luaopen_Vector3i();
    void luaopen_Vector4();
    void luaopen_Vector4i();
    void luaopen_Quaternion();
    void luaopen_Basis();
    void luaopen_Transform3D();
	void luaopen_Transform2D();
    void luaopen_AABB();
    void luaopen_Color();
};
