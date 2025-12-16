/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package sys.net;

import haxe.io.Bytes;
import haxe.io.BytesInput;

import lua.NativeStringTools.find;

import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.Variant;
import sunaba.core.VariantType;

@:coreapi
class Host {
	public var host(default, null):String;

	public var ip(default, null):Int;

	var _ip:String;

	private var hxNetHost: NativeReference;

	public function new(name:String):Void {
		hxNetHost = new NativeReference("res://Engine/HxNetHost.cs", new ArrayList(), ScriptType.csharp);
		host = name;
		if (find(name, "(%d+)%.(%d+)%.(%d+)%.(%d+)").begin != null) {
			_ip = name;
		} else {
			var getAddrInfoArgs: Array<Variant> = [name];
			var res: Variant = hxNetHost.call("GetAddrInfo", getAddrInfoArgs);

			if (res.getType() == VariantType.nil)
				throw "Unrecognized node name";
			var dnsAddrInfo: NativeReference = resVar;
			_ip = dnsAddrInfo.get("Ip");
			if (_ip == "::1")
				_ip = "127.0.0.0";
		}
		hxNetHost.set("Ip", _ip);
		var num = 0;
		for (a in _ip.split(".")) {
			num = num * 256 + lua.Lua.tonumber(a);
		}
		ip = num;
	}


	public function toString():String {
		return _ip;
	}

	public function reverse():String {
		return hxNetHost.call("Reverse", new ArrayList());
	}

	static public function localhost():String {
		var tempHxNetHost = new NativeReference("res://Engine/HxNetHost.cs", new ArrayList(), ScriptType.csharp);
        return tempHxNetHost.call("Localhost", new ArrayList());
	}
}
