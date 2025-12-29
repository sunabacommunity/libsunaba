package sunaba.core;

import lua.Table;

@:generic
extern class TypedArrayNative<T> {
    @:selfCall
    public function new();
    public function set(index:Int, value:T):Void;
    public function get(index:Int):T;
    public function find(value:T):Int;
    public function erase(index:Int):Void;
    public function insert(index:Int, value:T):Void;
    public function add(value:T):Void;
    public function clear():Void;
    public function next():T;
}

@:generic
@:forward(set, find, erase, insert, add, clear, next)
abstract TypedArray<T>(TypedArrayNative<T>) from TypedArrayNative<T> to TypedArrayNative<T> {
    public function new() {
        this = new TypedArrayNative<T>();
    }

    public function size():Int {
        var s = this;
        return untyped __lua__("#s");
    }

    @:arrayAccess
    public function get(index:Int):T {
        var s = this;
        var luaIndex = index + 1;
        return untyped __lua__("s[luaIndex]");
    }

    @:arrayAccess
    public function set(index:Int, value:T):T {
        var s = this;
        var luaIndex = index + 1;
        untyped __lua__("s[luaIndex] = value");
        return value;
    }

    @:to
    public inline function toArray():Array<T> {
        var s: TypedArray<T> = this;
        var array: Array<T> = [];
        for (i in 0...s.size()) {
            var value = s.get(i);
            if (value == null) {
                throw "TypedArray.toArray: null value at index " + i;
            }
            array.push(value);
        }
        return array;
    }

    @:to
    public inline function toTable():TypedArray<T> {
        var s: TypedArray<T> = this;
        var table: TypedArray<T> = untyped __lua__("table");
        for (i in 0...s.size()) {
            var value = s.get(i);
            if (value == null) {
                throw "Vector.toTable: null value at index " + i;
            }
            table[i] = value;
        }
        return table;
    }

    @:from
    @:generic
    public static function fromTable<A>(table:Table<Int, A>):TypedArray<A> {
        var vector: TypedArray<A> = untyped __lua__("table");
        return vector;
    }

    @:depricated
    @:from
    @:generic
    public static function fromArray<A>(array:Array<A>):TypedArray<A> {
        var vector: TypedArray<A> = new TypedArray<A>();
        for (i in 0...array.length) {
            var value: A = array[i];
            if (value == null) {
                throw "TypedArray.fromArray: null value at index " + i;
            }
            vector.add(value);
        }
        return vector;
    }
}
