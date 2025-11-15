#include "QuickJSRuntime.h"

// Define the singleton instance
QuickJSRuntime* QuickJSRuntime::singleton = nullptr;

QuickJSRuntime::QuickJSRuntime(/* args */)
{
	rt = JS_NewRuntime();
}

QuickJSRuntime::~QuickJSRuntime()
{
	JS_FreeRuntime(rt);
}
