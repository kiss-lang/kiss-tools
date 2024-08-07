// TODO bug in kiss-vscode new class: it takes the first line of the currently open file,
// instead of intelligently picking a package declaration
package kiss_tools;

import kiss.Prelude;
import kiss.List;

import haxe.ds.Map;
import haxe.Json;
import haxe.DynamicAccess;
import sys.io.File;
import sys.FileSystem;
using StringTools;

typedef Jsonable<T> = {
    function stringify():String;
    function parse(s:String):T;
}

typedef JsonStringMap = JsonMap<JsonString>;

@:build(kiss.Kiss.build())
class JsonMap<T:Jsonable<T>> {}
