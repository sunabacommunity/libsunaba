package sunaba.core;

enum abstract VariantType(Int) from Int to Int {
    var nil = 0;
    var bool = 1;
    var int = 2;
    var float = 3;
    var string = 4;
    var vector2 = 5;
    var vector2i = 6;
    var rect2 = 7;
    var rect2i = 8;
    var vector3 = 9;
    var vector3i = 10;
    var transform2d = 11;
    var vector4 = 12;
    var vector4i = 13;
    var plane = 14;
    var quaternion = 15;
    var aabb = 16;
    var basis = 17;
    var transform3d = 18;
    var projection = 19;
    var color = 20;
    var stringName = 21;
    var nodePath = 22;
    var object = 24;
    var dictionary = 27;
    var arrayList = 28;
    var binaryData = 29;
    var int32Vector = 30;
    var int64Vector = 31;
    var float32Vector = 32;
    var float64Vector = 33;
    var stringVector = 34;
    var vector2Vector = 35;
    var vector3Vector = 36;
    var colorVector = 37;
    var vector4Vector = 38;
    var max = 39;

    public static var values = [
        nil,
        bool,
        int,
        float,
        string,
        vector2,
        vector2i,
        rect2,
        rect2i,
        vector3,
        vector3i,
        transform2d,
        projection,
        color,
        stringName,
        nodePath,
        object,
        dictionary,
        arrayList,
        binaryData,
        int32Vector,
        float32Vector,
        stringVector,
        vector2Vector,
        vector3Vector,
        colorVector,
        vector4Vector,
        max
    ];

    public static function fromString(value:String):VariantType {
        return switch value {
            case "nil": return VariantType.nil;
            case "bool": return VariantType.bool;
            case "int": return VariantType.int;
            case "float": return VariantType.float;
            case "string": return VariantType.string;
            case "vector2": return VariantType.vector2;
            case "vector2i": return VariantType.vector2i;
            case "rect2": return VariantType.rect2;
            case "rect2i": return VariantType.rect2i;
            case "vector3": return VariantType.vector3;
            case "vector3i": return VariantType.vector3i;
            case "transform2d": return VariantType.transform2d;
            case "projection": return VariantType.projection;
            case "color": return VariantType.color;
            case "stringName": return VariantType.stringName;
            case "nodePath": return VariantType.nodePath;
            case "object": return VariantType.object;
            case "dictionary": return VariantType.dictionary;
            case "arrayList": return VariantType.arrayList;
            case "binaryData": return VariantType.binaryData;
            case "int32Vector": return VariantType.int32Vector;
            case "float32Vector": return VariantType.float32Vector;
            case "stringVector": return VariantType.stringVector;
            case "vector2Vector": return VariantType.vector2Vector;
            case "vector3Vector": return VariantType.vector3Vector;
            case "colorVector": return VariantType.colorVector;
            case "vector4Vector": return VariantType.vector4Vector;
            case "max": return VariantType.max;
            default: return null;
        };
    }
}
