# Using the same minimum as the godot-cpp project
cmake_minimum_required(VERSION 3.17)

# Silence unused variable warning when specified from toolchain
if(CMAKE_C_COMPILER)
endif()

set(LUAJIT_DIR "${CMAKE_SOURCE_DIR}/luajit" CACHE PATH "Path to LuaJIT source directory" FORCE)


set(LIBNAME "sunaba" CACHE STRING "The name of the library")

set(GODOT_PROJECT_DIR "demo" CACHE STRING "The directory of a Godot project folder")

# Make sure all the dependencies are satisfied
find_package(Python3 3.4 REQUIRED)
find_program(GIT git REQUIRED)

# Ensure godot-cpp submodule has been updated
if(NOT EXISTS "${CMAKE_CURRENT_LIST_DIR}/godot-cpp/src")
    message(NOTICE "godot-cpp bindings source not found")
    message(NOTICE "initializing/updating the godot-cpp submodule...")

    # update the c++ bindings submodule to populate it with the necessary source for the library
    execute_process(
        COMMAND git submodule update --init godot-cpp
        WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        COMMAND_ERROR_IS_FATAL ANY
    )
endif()
add_subdirectory(godot-cpp SYSTEM)

#if(WIN32)
    # Windows forces dynamic build mode in LuaJIT CMakeLists.txt
    #set(LUAJIT_BUILD_MODE "dynamic")
#else()
    set(LUAJIT_BUILD_MODE "static")
#endif()
if (APPLE)
    set(CMAKE_OSX_DEPLOYMENT_TARGET "10.15")
endif()
add_subdirectory( luajit-cmake )


add_compile_definitions( USE_LUAJIT )
add_compile_definitions( SOL_EXCEPTIONS_SAFE_PROPAGATION )
set( SOL2_LUA_VERSION "LuaJIT" )
add_compile_definitions( SOL_ALL_SAFETIES_ON )
# Include directories for LuaJIT
include_directories( ${CMAKE_SOURCE_DIR}/luajit/src )
# Also include the binary directory where luajit.h is generated
include_directories( ${CMAKE_BINARY_DIR}/luajit-cmake )
message(STATUS "Using LuaJIT on ${CMAKE_SYSTEM_NAME} ${LIB_ARCH}")


add_subdirectory(sol2)

add_compile_definitions( SOL_EXCEPTIONS_SAFE_PROPAGATION )
add_compile_definitions( SOL_ALL_SAFETIES_ON )

# Add godot-cpp's module path and include the exported functions.
# This is made available for documentation generation
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${godot-cpp_SOURCE_DIR}/cmake")
include(GodotCPPModule)

# The godot-cpp target has some of useful properties attached that can be retrieved like so.
get_target_property(GODOTCPP_SUFFIX godot::cpp GODOTCPP_SUFFIX)
get_target_property(GODOTCPP_PLATFORM godot::cpp GODOTCPP_PLATFORM)

# Now we can specify our own project which will inherit any global cmake properties or variables that have been defined.
project(sunaba
    VERSION 1.0
    DESCRIPTION "This repository serves as a quickstart template for GDExtension development with Godot 4.0+."
    HOMEPAGE_URL "https://github.com/sunabagg/libsunaba/tree/main"
    LANGUAGES CXX
)

add_library(${LIBNAME} SHARED)

# Ensure LuaJIT headers are generated before building our library
add_dependencies(${LIBNAME} libluajit)

target_link_directories(${LIBNAME} PRIVATE src)
target_include_directories(${LIBNAME} PRIVATE quickjs)

target_sources(${LIBNAME}
    PRIVATE
    src/register_types.cpp
    src/register_types.h
    src/example_class.cpp
    src/example_class.h
    src/Runtime.cpp
    src/Runtime.h
    src/ScriptObject.cpp
    src/ScriptObject.h
    src/ScriptFunction.cpp
    src/ScriptFunction.h
    src/luaopen_AABB.cpp
    src/luaopen_ArrayList.cpp
    src/luaopen_Basis.cpp
    src/luaopen_Callable.cpp
    src/luaopen_Color.cpp
    src/luaopen_Dictionary.cpp
    src/luaopen_NativeObject.cpp
    src/luaopen_NativeObject_sandboxed.cpp
    src/luaopen_NativeReference.cpp
    src/luaopen_NativeReference_sandboxed.cpp
    src/luaopen_Quaternion.cpp
    src/luaopen_Rect2.cpp
    src/luaopen_Rect2i.cpp
    src/luaopen_Signal.cpp
    src/luaopen_Transform3D.cpp
    src/luaopen_Variant.cpp
    src/luaopen_Variant_constructors.cpp
    src/luaopen_Variant_fromMethods.cpp
    src/luaopen_Variant_asMethods.cpp
    src/luaopen_Variant_arrayMethods.cpp
    src/luaopen_Variant_objectMethods.cpp
    src/luaopen_Variant_scriptMethods.cpp
    src/luaopen_Variant_sandboxed.cpp
    src/luaopen_Vector2.cpp
    src/luaopen_Vector2i.cpp
    src/luaopen_Vector3.cpp
    src/luaopen_Vector3i.cpp
    src/luaopen_Vector4.cpp
    src/luaopen_Vector4i.cpp
    src/luaopen_Transform2D.cpp
    src/luaopen_Plane.cpp
    src/luaopen_Projection.cpp
    src/io/Byte.h
    src/io/Byte.cpp
    src/io/ByteArray.h
    src/io/ByteArray.cpp
    quickjs/quickjs-amalgam.c
)

# Fetch a list of the xml files to use for documentation and add to our target
file(GLOB_RECURSE DOC_XML LIST_DIRECTORIES NO CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/doc_classes/*.xml")

# conditionally add doc data to compile output
if(DOC_XML)
    if(GODOTCPP_TARGET MATCHES "editor|template_debug")
        target_doc_sources(${LIBNAME} ${DOC_XML})
    endif()
endif()

if (CMAKE_BUILD_TYPE STREQUAL "Release")
    target_compile_definitions(${LIBNAME} PRIVATE GDEXTENSION_RELEASE)
    set(GODOTCPP_TARGET "template_release")
endif()

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    target_link_libraries(${LIBNAME} PRIVATE godot-cpp -Wl,--whole-archive luajit::lib -Wl,--no-whole-archive -Wl,--whole-archive luajit::header -Wl,--no-whole-archive sol2)
else()
    target_link_libraries(${LIBNAME} PRIVATE godot-cpp luajit::lib luajit::header sol2)
endif()

# Require at least C++17 for this target
set_property(TARGET ${LIBNAME} PROPERTY CXX_STANDARD 17)
set_property(TARGET ${LIBNAME} PROPERTY CXX_STANDARD_REQUIRED ON)

# MSVC-specific settings
if(MSVC)
    target_compile_options(${LIBNAME} PRIVATE /Zc:__cplusplus /bigobj)
    target_compile_definitions(${LIBNAME} PRIVATE _CRT_SECURE_NO_WARNINGS)
    # Ensure we use the same runtime library as LuaJIT
    set_property(TARGET ${LIBNAME} PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreadedDebug$<$<CONFIG:Release>:MultiThreaded>")
else()
    # Common non-MSVC compile options
    target_compile_options(${LIBNAME} PRIVATE -fPIC -fpermissive -ftemplate-backtrace-limit=0 -fvisibility=default)
    target_compile_options(libluajit PRIVATE -fPIC -fpermissive -ftemplate-backtrace-limit=0)
    # Enable AddressSanitizer only for Debug builds to avoid linking ASan into release/library consumers
    # and ensure the sanitizer runtime is linked when enabled.
    #target_compile_options(${LIBNAME} PRIVATE $<$<CONFIG:Debug>:-fsanitize=address>)
    #target_link_options(${LIBNAME} PRIVATE $<$<CONFIG:Debug>:-fsanitize=address>)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=duplicated-branches")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=shadow")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=deprecated-declarations")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=unused-function")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=missing-field-initializers")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=return-type")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=address")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=pedantic")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=sign-compare")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=comment")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=array-bounds")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
endif()

set_target_properties(${LIBNAME}
    PROPERTIES
    # The generator expression here prevents msvc from adding a Debug or Release subdir.
    RUNTIME_OUTPUT_DIRECTORY "$<1:${PROJECT_SOURCE_DIR}/bin/${GODOTCPP_PLATFORM}>"
    # MinGW-specific flags for large object files
)

if(MINGW)
    target_compile_options(${LIBNAME} PRIVATE -Wa,-mbig-obj)
endif()

set(GODOT_PROJECT_BINARY_DIR "${PROJECT_SOURCE_DIR}/${GODOT_PROJECT_DIR}/bin/${GODOTCPP_PLATFORM}")

add_compile_definitions($<$<CONFIG:Release>:NDEBUG=>)

add_custom_command(TARGET ${LIBNAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy "$<TARGET_FILE:${LIBNAME}>" "${GODOT_PROJECT_BINARY_DIR}/$<TARGET_FILE_NAME:${LIBNAME}>"
)
