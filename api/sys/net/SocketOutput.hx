/*
 * Copyright (C)2005-2022 Haxe Foundation
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
import sunaba.core.ByteArray.ByteArrayUtils;
import lua.*;

import haxe.io.Bytes;
import haxe.io.Error;

class SocketOutput extends haxe.io.Output {
	private var hxSocketInput: NativeReference;

	public function new(hxSocketInput:NativeReference) {
		this.hxSocketInput = hxSocketInput;
	}

	override public function writeByte(c:Int):Void {
		var res: Int = hxSocketInput.call("WriteByte", new ArrayList());

		if (res == -1) {
			var msg: String = hxSocketInput.get("Msg");
			throw 'Error : Socket writeByte : ${msg}';
		}
	}

	override public function writeBytes(s:Bytes, pos:Int, len:Int):Int {

		var args = new ArrayList();
		args.append(ByteArrayUtils.bytesToBinaryData(s));
		args.append(pos);
		args.append(len);

		var res: Int = hxSocketInput.call("WriteBytes", args);

		if (res == -1) {
			var msg: String = hxSocketInput.get("Msg");
			throw 'Error : Socket writeByte : ${msg}';
		}

		return len;
	}

}
