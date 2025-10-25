#pragma once

#include <godot_cpp/classes/object.hpp>
#include <godot_cpp/variant/variant.hpp>
#include <godot_cpp/classes/class_db_singleton.hpp>
#include <godot_cpp/classes/engine.hpp>
#include <godot_cpp/classes/gd_script.hpp>
#include <godot_cpp/classes/resource_loader.hpp>
#include <sol/sol.hpp>

using namespace godot;

class NativeObject {
    private:
        Object* native;
    public:
        NativeObject(std::string name, const Array& args = Array(), int scriptType = 0)
        {
            if (scriptType == 0)
            {
                native = ClassDB::instantiate( name.c_str() );
            }
            else if (scriptType == 1)
            {
                Ref<godot::Resource> res = ResourceLoader::get_singleton()->load(
                    name.c_str()
                );

                Ref<GDScript> script = res;
                if (script.is_valid() && !script.is_null())
                {
                    native = script->callv( "new",  args);
                }
            }
        	else if (scriptType == 2) {
        		Ref<godot::Resource> res = ResourceLoader::get_singleton()->load(
					"res://Engine/CSharpScriptLoader.gd"
				);

        		Ref<GDScript> script = res;
        		Object* loader = script->callv( "new",  Array() );
        		native = loader->call( "load_script", name.c_str(), args );
        	}
        }

        NativeObject(Object* obj)
        {
            native = obj;
        }

        Object* getNative()
        {
            return native;
        }

        static  Variant callStatic(std::string classname, std::string methodname, const Array& args)
        {
            Callable callable = Callable(ClassDBSingleton::get_singleton(), "class_call_static");
            Array callableArgs;
            callableArgs.append( classname.c_str() );
            callableArgs.append( methodname.c_str() );
            callableArgs.append_array( args );
            return callable.callv( callableArgs );
        }

        static NativeObject* getService(std::string classname)
        {
            return new NativeObject(Engine::get_singleton()->get_singleton(classname.c_str()));
        }

        Variant call(std::string funcname, const Array& args)
        {
            return native->callv( funcname.c_str(), args );
        }

        Variant get(std::string propname)
        {
            return native->get( propname.c_str() );
        }

        void set(std::string propname, Variant value)
        {
            native->set( propname.c_str(), value );
        }

        std::string getClass()
        {
            return native->get_class().utf8().get_data();
        }

        bool isClass(std::string classname)
        {
            return native->is_class( classname.c_str() );
        }

        Variant getMeta(std::string name, Variant _default = Variant())
        {
            return native->get_meta( name.c_str(), _default );
        }

        Array getMetaList()
        {
            return native->get_property_list();
        }

        int getMethodArgumentCount(std::string method)
        {
            return native->get_method_argument_count( method.c_str() );
        }

        Array getMethodList()
        {
            return native->get_method_list();
        }

        Array getPropertyList()
        {
            return native->get_property_list();
        }

        bool hasMeta(std::string name)
        {
            return native->has_meta( name.c_str() );
        }

        bool hasMethod(std::string method)
        {
            return native->has_method( method.c_str() );
        }

        void setMeta(std::string name, Variant value)
        {
            return;native->set_meta( name.c_str(), value );
        }

		bool isNull()
        {
        	return native == nullptr;
        }

        void free()
        {
            memfree( native );
        }
};
