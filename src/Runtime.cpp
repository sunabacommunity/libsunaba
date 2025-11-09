#include "Runtime.h"

#include "NativeObject.h"
#include "NativeReference.h"
#include "io/Byte.h"
#include "io/ByteArray.h"
#include  "ScriptObject.h"

#include <godot_cpp/variant/utility_functions.hpp>
#include <godot_cpp/classes/json.hpp>
#include <godot_cpp/classes/os.hpp>
#include <godot_cpp/classes/dir_access.hpp>
#include <godot_cpp/classes/project_settings.hpp>

void Runtime::_bind_methods() {
	ClassDB::bind_method(D_METHOD("init_state", "sandboxed", "classes"), &Runtime::initState);
	ClassDB::bind_method(D_METHOD("do_string", "code"), &Runtime::do_string);
	MethodInfo requireMi;
	requireMi.name = "_require";
	requireMi.arguments.push_back(PropertyInfo(Variant::STRING, "path"));
	requireMi.return_val = PropertyInfo(Variant::STRING, "code");
	ClassDB::add_virtual_method("Runtime", requireMi);
	MethodInfo errordMi;
	errordMi.name = "_errord";
	errordMi.arguments.push_back(PropertyInfo(Variant::STRING, "msg"));
	errordMi.arguments.push_back(PropertyInfo(Variant::STRING, "title"));
	errordMi.return_val = PropertyInfo(Variant::NIL, "void");
	ClassDB::add_virtual_method("Runtime", errordMi);
	MethodInfo warndMi;
	warndMi.name = "_warnd";
	warndMi.arguments.push_back(PropertyInfo(Variant::STRING, "msg"));
	warndMi.arguments.push_back(PropertyInfo(Variant::STRING, "title"));
	warndMi.return_val = PropertyInfo(Variant::NIL, "void");
	ClassDB::add_virtual_method("Runtime", warndMi);
	MethodInfo infodMi;
	infodMi.name = "_infod";
	infodMi.arguments.push_back(PropertyInfo(Variant::STRING, "msg"));
	infodMi.arguments.push_back(PropertyInfo(Variant::STRING, "title"));
	infodMi.return_val = PropertyInfo(Variant::NIL, "void");
	ClassDB::add_virtual_method("Runtime", infodMi);
	MethodInfo printMi;
	printMi.name = "_print";
	printMi.arguments.push_back(PropertyInfo(Variant::PACKED_STRING_ARRAY, "msgarr"));
	printMi.return_val = PropertyInfo(Variant::NIL, "void");
	ClassDB::add_virtual_method("Runtime", printMi);
	ClassDB::bind_method(D_METHOD("get_args"), &Runtime::getArgs);
	ClassDB::bind_method(D_METHOD("set_args", "args"), &Runtime::setArgs);
	ADD_PROPERTY(PropertyInfo(Variant::PACKED_STRING_ARRAY, "args"), "set_args", "get_args");
	ClassDB::bind_method(D_METHOD("bind_object", "name", "obj"), &Runtime::bind_object);
	ClassDB::bind_method(D_METHOD("set_var", "name", "variant"), &Runtime::set_var);
}

void Runtime::_process(double delta) {
	lua_state.collect_garbage();
}

void Runtime::_print(const PackedStringArray &msgarr) {
	if (has_method("_print")) {
		call("_print", msgarr);
	}
	String msg = String("");
	for (int i = 0; i < msgarr.size(); i++) {
		if (!msg.is_empty()) {
			msg += ", ";
		}
		String msgstr = msgarr[i];
		msg += msgstr;
	}
	UtilityFunctions::print(msg);
}

void Runtime::_errord(const String &msg, const String &title) {
	if (has_method("_errord")) {
		call("_errord", msg, title);
	}
	UtilityFunctions::push_error(title + String(": ") + msg);
}

void Runtime::_warnd(const String &msg, const String &title) {
	if (has_method("_warnd")) {
		call("_warnd", msg, title);
	}
	UtilityFunctions::push_warning(title + String(": ") + msg);
}

void Runtime::_infod(const String &msg, const String &title) {
	if (has_method("_infod")) {
		call("_infod", msg, title);
	}
	UtilityFunctions::print(title + String(": ") + msg);
}

void Runtime::do_string(const String &code) {
	lua_state["__args"] = args;
	auto result = lua_state.safe_script(code.utf8().get_data());
	if (!result.valid()) {
		sol::error err = result;
		_errord(err.what(), "Error");
	}
}

void Runtime::set_var(const String &name, const Variant &variant) {
	lua_state[name.utf8().get_data()] = ScriptObject::gdToSol(variant, lua_state);
}

String Runtime::_require(const String &path) {
	if (has_method("_require")) {
		return call("_require", path);
	}
	String str = String("");
	return str;
}

void Runtime::initState(bool p_sandboxed, const Array& classnames) {
	luaopen_AABB();
	luaopen_ArrayList();
	luaopen_Basis();
	luaopen_Color();
	luaopen_Dictionary();
	luaopen_Quaternion();
	luaopen_Rect2();
	luaopen_Rect2i();
	luaopen_Transform2D();
	luaopen_Transform3D();
	luaopen_Vector2();
	luaopen_Vector2i();
	luaopen_Vector3();
	luaopen_Vector3i();
	luaopen_Vector4();
	luaopen_Vector4i();
	luaopen_Callable();
	luaopen_Signal();
	luaopen_Plane();
	luaopen_Projection();
	io::luaopen_ByteArray(lua_state);
	io::luaopen_Byte(lua_state);
	if (p_sandboxed) {
		luaopen_Variant_sandboxed(classnames);
		luaopen_NativeObject_sandboxed(classnames);
		luaopen_NativeReference_sandboxed(classnames);
	}
	else {
		luaopen_Variant();
		luaopen_NativeObject();
		luaopen_NativeReference();
	}

	if (!p_sandboxed) {
		lua_state.open_libraries( sol::lib::base, sol::lib::bit32,
			sol::lib::coroutine, sol::lib::count, sol::lib::math,
			sol::lib::string,sol::lib::table, sol::lib::utf8,
			sol::lib::package, sol::lib::os, sol::lib::io,
			sol::lib::debug, sol::lib::jit, sol::lib::ffi );
		/*luaopen_base(L);
		luaopen_bit(L);
		luaopen_debug(L);
		luaopen_ffi(L);
		luaopen_io(L);
		luaopen_os(L);
		luaopen_table(L);
		luaopen_string(L);
		luaopen_math(L);
		luaopen_package(L);
		global_state.open_libraries( sol::lib::coroutine,
			sol::lib::count, g );*/
		lua_state["sandboxed"] = false;
	}
	else {
		lua_state.open_libraries( sol::lib::base, sol::lib::bit32, sol::lib::coroutine,
			sol::lib::count, sol::lib::math, sol::lib::string,
			sol::lib::table, sol::lib::utf8, sol::lib::package);
		lua_state["sandboxed"] = true;
	}

	auto execPath = OS::get_singleton()->get_executable_path();
	lua_state["execPath"] = execPath.utf8().get_data();

	if (OS::get_singleton()->get_name() == "macOS") {
		auto resDir = ProjectSettings::get_singleton()->globalize_path("res://");
		lua_state["resDir"] = resDir.utf8().get_data();
		lua_state.script("package.path = package.path .. ';' .. resDir ..  '/?.lua'");
	}

	auto execDir = execPath.get_base_dir();
	if (OS::get_singleton()->get_name() == "macOS") {
		// On macOS, the executable path is usually in Contents/MacOS/ directory
		execDir = execDir.replace("/MacOS", "/Frameworks/").replace("\\MacOS", "\\Resources");
	}
	auto execFile = execPath.get_file();
	auto shareDir = execPath.replace("bin/" + execFile, "share/sunaba");
	if (OS::get_singleton()->get_name() == "macOS") {
		shareDir = execDir.replace("/MacOS", "/Resources/").replace("\\MacOS", "\\Resources");
	}
	if (DirAccess::dir_exists_absolute(shareDir)) {
		execDir = shareDir;
		lua_state["shareDir"] = shareDir.utf8().get_data();
		lua_state.script("package.path = package.path .. ';' .. shareDir .. '/?.lua'");
	}
	else {
		lua_state["shareDir"] = sol::lua_nil;
	}

	lua_state["execDir"] = execDir.utf8().get_data();
	lua_state.script("package.path = package.path .. ';' .. execDir  ..  '/?.lua'");

	lua_state["print"] = [this]( sol::variadic_args args ) {
        PackedStringArray msgarr;
        for ( const auto &arg : args )
        {
            if ( arg.is<std::string>() )
            {
                std::string str = arg.as<std::string>();
                msgarr.append(str.c_str());
            }
            else if (arg.is<sol::table>())
            {
                msgarr.append("table");
            }
            else if (arg.is<Vector3>())
            {
                Vector3 vec = arg.as<Vector3>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Vector2>())
            {
                Vector2 vec = arg.as<Vector2>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Vector4>())
            {
            	Vector4 vec = arg.as<Vector4>();
            	msgarr.append(String(vec));
            }
            else if (arg.is<float>())
            {
                float f = arg.as<float>();
                Variant v = f;
                msgarr.append(String(v));
            }
            else if (arg.is<bool>())
            {
                bool b = arg.as<bool>();
                Variant v = b;
                msgarr.append(String(v));
            }
            else if (arg.is<int>())
            {
                int i = arg.as<int>();
                Variant v = i;
                msgarr.append(String(v));
            }
            else if (arg.is<Vector4>())
            {
                Vector4 vec = arg.as<Vector4>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Vector4i>())
            {
                Vector4i vec = arg.as<Vector4i>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Vector2i>())
            {
                Vector2i vec = arg.as<Vector2i>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Vector3i>())
            {
                Vector3i vec = arg.as<Vector3i>();
                msgarr.append(String(vec));
            }
            else if (arg.is<Dictionary>()) {
                Dictionary dict = arg.as<Dictionary>();
                msgarr.append(JSON::stringify(dict, "  "));
            }
        	else if (arg.is<Color>()) {
        		Color color = arg.as<Color>();
        		msgarr.append(color.to_html());
        	}
        	else if (arg.is<Variant>()) {
        		Variant v = arg.as<Variant>();
        		msgarr.append(v);
        	}
        }
        _print(msgarr);
		
    };
	lua_state["__errord"] = [this](std::string message, std::string title) {
		_errord(message.c_str(), title.c_str());
	};
	lua_state["__warnd"] = [this](std::string message, std::string title) {
			_warnd(message.c_str(), title.c_str());
	};
	lua_state["__infod"] = [this](std::string message, std::string title) {
			_infod(	message.c_str(), title.c_str());
	};

	lua_state.add_package_loader([this](lua_State* L) {
		// This function is used to load a file and require it in Lua
		// It should return 1 if successful, 0 otherwise
		const char* filename = luaL_checkstring(L, 1);
		if (!filename || strlen(filename) == 0) {
			sol::stack::push(
			 L, "Error: filename is empty");
			return 0;
		}

		// Get the sol::state from the lua_State
		sol::state_view lua(L);

		String file = _require(filename);

		if (file.is_empty()) {
			sol::stack::push(
				L, "Error: failed to load file: " + String(filename));
			return 0;
		}

		int error = luaL_loadbuffer(L, file.utf8().get_data(), file.utf8().size(), filename);

		if (error) {
			fprintf(stderr, "%s", lua_tostring(L, -1));
			lua_pop(L, 1);  /* pop error message from the stack */
			return error;
		}
		return 1; // return the result of the require call
	});

	bind_object("__rootNode", this);
}

void Runtime::bind_object(const String &name, Object *obj) {
	if (obj->is_class("RefCounted")) {
		Ref<RefCounted> ref = Ref<RefCounted>(Object::cast_to<RefCounted>(obj));
		lua_state[name.utf8().get_data()] = new NativeReference(ref);
		return;
	}
	lua_state[name.utf8().get_data()] = new NativeObject(obj);
}
