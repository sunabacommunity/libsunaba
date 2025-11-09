#pragma once

#include <godot_cpp/classes/ref_counted.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <sol/sol.hpp>

#include "NativeObject.h"
#include "NativeReference.h"

using namespace godot;

class ScriptObject : public RefCounted{
GDCLASS( ScriptObject, RefCounted )

    protected:
        static void _bind_methods();
    public:

		static Variant solToGd(sol::object var)
		{
			if (!var.valid())
			{
				return Variant();
			}
			if (var.get_type() == sol::type::boolean)
			{
				return var.as<bool>();
			}
			else if (var.get_type() == sol::type::string)
			{
				std::string str = var.as<std::string>();
				return String(str.c_str());
			}
			else if (var.get_type() == sol::type::table)
			{
				sol::table subobj = var.as<sol::table>();
				Ref<ScriptObject> obj = Ref<ScriptObject>(memnew(ScriptObject));
				obj->object = subobj;
				return obj;
			}
			else if (var.get_type() == sol::type::number)
			{
				float number = var.as<float>();
				return number;
			}
			else if (var.get_type() == sol::type::userdata || var.get_type() == sol::type::lightuserdata)
			{
				if (var.is<Variant>())
				{
					return var.as<Variant>();
				}
				else if (var.is<NativeObject>())
				{
					NativeObject obj = var.as<NativeObject>();
					return obj.getNative();
				}
				else if (var.is<NativeReference>())
				{
					NativeReference ref = var.as<NativeReference>();
					return ref.getNative();
				}
			}

			return Variant();
		}

		static sol::object gdToSol(const Variant &v, lua_State* L) {
			switch (v.get_type()) {
				case Variant::NIL:
					return sol::make_object(L, sol::lua_nil);

				case Variant::BOOL:
					return sol::make_object(L, (bool)v);

				case Variant::INT:
					return sol::make_object(L, (int64_t)v); // Lua numbers are double but int64_t maps safely

				case Variant::FLOAT:
					return sol::make_object(L, (double)v);

				case Variant::STRING:
					return sol::make_object(L, std::string(String(v).utf8().get_data()));

				case Variant::ARRAY: {
					Array arr = v;
					sol::table lua_tbl = sol::state_view(L).create_table((int)arr.size(), 0);
					for (int i = 0; i < arr.size(); i++) {
						lua_tbl[i + 1] = gdToSol(arr[i], L); // 1-indexed for Lua
					}
					return lua_tbl;
				}

				case Variant::DICTIONARY: {
					Dictionary dict = v;
					sol::table lua_tbl = sol::state_view(L).create_table(0, (int)dict.size());
					Array keys = dict.keys();
					for (int i = 0; i < keys.size(); i++) {
						lua_tbl[gdToSol(keys[i], L)] = gdToSol(dict[keys[i]], L);
					}
					return lua_tbl;
				}

				case Variant::OBJECT: {
					Object *obj = v;
					if (obj) {
						// If it's a ScriptObject, reuse underlying Lua table
						if (ScriptObject* script_obj = Object::cast_to<ScriptObject>(obj)) {
							return sol::make_object(L, script_obj->object);
						}
						if (obj->is_class("RefCounted")) {
							Ref<RefCounted> ref = Ref<RefCounted>(Object::cast_to<RefCounted>(obj));
							if (ref.is_valid()) {
								return sol::make_object(L, std::make_unique<NativeReference>(ref));
							}
						}
						// Wrap generic object (your NativeObject/NativeReference handles this already)
						return sol::make_object(L, std::make_unique<NativeObject>(obj));
					}
					return sol::make_object(L, sol::lua_nil);
				}

				default:
					// Fallback: store raw Variant as userdata if unknown
					return sol::make_object(L, v);
			}
		}

        sol::table object;

        ScriptObject()
        {
        }

        ~ScriptObject() {}

        Variant get_var(const String& name)
        {
            auto var = object[name.utf8().get_data()];
            return solToGd( var.get<sol::object>() );
        }

        void set_var( const String &name, const Variant &var )
        {
            object[name.utf8().get_data()] = sol::make_object( object.lua_state(), gdToSol(var, object.lua_state()) );
        }

        bool has_var(const String& name)
        {
            if (!object[name.utf8().get_data()].valid()) return false;
            return object[name.utf8().get_data()].get_type() != sol::type::lua_nil && object[name.utf8().get_data()].get_type() != sol::type::none;
        }

        bool has_function(const String& name)
        {
            if (!object[name.utf8().get_data()].valid()) return false;
            return object[name.utf8().get_data()].get_type() == sol::type::function;
        }

        Variant call_function(const String& name, const Array& args)
        {
            auto func = object[name.utf8().get_data()].get<sol::protected_function>();
            std::vector<sol::object> _args;
            for (int i = 0; i < args.size(); i++)
            {
                _args.push_back( gdToSol(args[i], object.lua_state()) );
            }

            sol::protected_function_result result = func( sol::as_args(_args));

            if (!result.valid()) {
                sol::error err = result;
                UtilityFunctions::printerr("Error: ", err.what());
                sol::state_view lua_state = object.lua_state();
                sol::function errord = lua_state["__errord"];
                if (errord.valid())
                {
                    errord(err.what(), "Script Error");
                }
                return Variant();
            }

            sol::object ret = result.get<sol::object>();
            return solToGd(ret);
        }
};
