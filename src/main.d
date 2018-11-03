import std.stdio;

static import cga;

void main(string [] args) {
    writeln("ChinaGreatAgain 0.0.1");
    writeln("---------OUT---------");

    wstring src;
    foreach (arg; args[1..$]) {
    foreach (wstring line; File(arg, "r").lines) {
      src ~= line;
    }
  }
  cga.run(src);
  writeln("\n");
}
