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

import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.Dictionary;

class Socket {
	public var input(default, null):haxe.io.Input;

	public var output(default, null):haxe.io.Output;

	var timeout = null;

	var hxSocket: NativeReference;

	public function new():Void {
		hxSocket = new NativeReference("res://Engine/HxSocket.cs", new ArrayList(), ScriptType.csharp);
	}

	public function close():Void {
		hxSocket.call("Close", new ArrayList());
	}

	public function read():String {
		return input.readAll().toString();
	}

	public function write(content:String):Void {
		output.writeString(content);
	}

	public function connect(host:Host, port:Int):Void {
		var args = new ArrayList();
		args.append(host.hxNetHost);
		args.append(port);

		var res: Int = hxSocket.call("Connect", args);

		if (res == -1) {
			var msg: String = hxSocket.get("Msg");
			throw 'Socket Error : ${msg}';
		}

		input = new SocketInput(hxSocket.get("Input"));
		output = new SocketOutput(hxSocket.get("Output"));
	}

	public function listen(connections:Int):Void {
		var args = new ArrayList();
		args.append(connections);

		var res: Int = hxSocket.call("Listen", args);

		if (res == -1) {
			var msg: String = hxSocket.get("Msg");
			throw 'Socket Listen Error : ${msg}';
		}
	}

	public function shutdown(read:Bool, write:Bool):Void {
		var args = new ArrayList();
		args.append(read);
		args.append(write);

		hxSocket.call("Shutdown", args);
	}

	public function bind(host:Host, port:Int):Void {
		var args = new ArrayList();
		args.append(host.hxNetHost);
		args.append(port);

		var res: Int = hxSocket.call("Bind", args);

		if (res == -1) {
			var msg: String = hxSocket.get("Msg");
			throw 'Socket Bind Error : ${msg}';
		}
	}

	public function accept():Socket {
		/*var server:TcpServer = cast _socket;
		var res = server.accept();
		if (res.message != null)
			throw 'Error : ${res.message}';
		var sock = new Socket();
		sock._socket = res.result;
		sock.input = new SocketInput(res.result);
		sock.output = new SocketOutput(res.result);
		return sock;*/

		var args = new ArrayList();

		var res: Dictionary = hxSocket.call("Accept", args);

		var msg: String = res.get("message");
		if (msg != "") {
			throw 'Error : ${msg}';
		}

		var _hxSocket: NativeReference = res.get("result");

		var sock = new Socket();
		sock.hxSocket = _hxSocket;
		sock.input = new SocketInput(_hxSocket.get("Input"));
		sock.output = new SocketOutput(_hxSocket.get("Output"));
		return sock;
	}

	public function peer():{host:Host, port:Int} {
		var args = new ArrayList();

		var res: Dictionary = hxSocket.call("Peer", args);
		var resHost: Dictionary = res.get("host");
		var host = new Host(resHost.get("name"));
		return {host: host, port: res.get("port")};
	}

	public function host():{host:Host, port:Int} {
		/*var server:TcpServer = cast _socket;
		var res = server.getsockname();
		var host = new Host(res.address);
		return {host: host, port: Std.parseInt(res.port)};*/

		var args = new ArrayList();

		var res: Dictionary = hxSocket.call("Host", args);
		var resHost: Dictionary = res.get("host");
		var host = new Host(resHost.get("name"));
		return {host: host, port: res.get("port")};
	}

	public inline function setTimeout(timeout:Float):Void {
		var args = new ArrayList();
		args.append(timeout);
		hxSocket.call("SetTimeout", args);
	}

	public function waitForRead():Void {
		select([this], null, null);
	}

	public function setBlocking(b:Bool):Void {
		var args = new ArrayList();
		args.append(b);
		hxSocket.call("SetBlocking", args);
	}

	public function setFastSend(b:Bool):Void {
		var args = new ArrayList();
		args.append(b);
		hxSocket.call("SetFastSend", args);
	}

	static public function select(read:Array<Socket>, write:Array<Socket>, others:Array<Socket>,
			?timeout:Float):{read:Array<Socket>, write:Array<Socket>, others:Array<Socket>} {
		var readAl = new ArrayList();
		var writeAl = new ArrayList();
		var othersAl = new ArrayList();

		if (read != null) {
			for (r in read) {
				var socketNr = r.hxSocket;
				readAl.append(socketNr);
			}
		}
		if (write != null) {
			for (r in write) {
				var socketNr = r.hxSocket;
				writeAl.append(socketNr);
			}
		}
		if (others != null) {
			for (r in others) {
				var socketNr = r.hxSocket;
				othersAl.append(socketNr);
			}
		}

		var selectArgs = new ArrayList();
		selectArgs.append(readAl);
		selectArgs.append(writeAl);
		selectArgs.append(othersAl);
		if (timeout != null) {
			selectArgs.append(timeout);
		}

		var hxSocket = new NativeReference("res://Engine/HxSocket.cs", new ArrayList(), ScriptType.csharp);
		var result : Dictionary = hxSocket.call("Select", selectArgs);

		var readRes: ArrayList = result.get("read");
		var writeRes: ArrayList = result.get("write");

		var readArr: Array<Socket> = new Array();
		var writeArr: Array<Socket> = new Array();

		for (i in 0...readRes.size()) {
			var nr : NativeReference = readRes.get(i);
			var sock = new Socket();
			sock.hxSocket = nr;
			readArr.push(sock);
		}
		for (i in 0...writeRes.size()) {
			var nr : NativeReference = writeRes.get(i);
			var sock = new Socket();
			sock.hxSocket = nr;
			writeArr.push(sock);
		}

		return {read: readArr, write: writeArr, others: []};
	}
}
