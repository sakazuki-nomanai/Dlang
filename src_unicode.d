import std.stdio;
import std.typetuple;

void main() {
    foreach(S; TypeTuple!(string, wstring, dstring)){
        writeln(S.stringof);
        foreach(s, ss){
            writefln("\t"`%(%s%) => %(%02X%)`, [s], (cast(immutable(ubyte)[])s).dup.reverse);
        }
        writeln();
    }
}
