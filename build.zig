
const std = @import("std");

pub fn build(b: *std.Build) void {
    //  it's just build.sh, sorry, I have no clue how to use zig build system properly.
    _=b.run(&.{"mkdir","-p","zig-out"});
    _=b.run(&.{"zig","build-obj","src/root.zig","-target","wasm32-freestanding","-O","ReleaseSmall","-femit-asm"});
    _=b.run(&.{"wasm-ld","root.o","-o","root.wasm","--no-entry","--export-all"});
    _=b.run(&.{"node","encode.node.js"});
    _=b.run(&.{"cp","src/index.html","zig-out"});
    _=b.run(&.{"mv","root.wasm","zig-out"});
    _=b.run(&.{"mv","root.wasm.base64.js","zig-out"});
    _=b.run(&.{"rm","root.o"});
    _=b.run(&.{"rm","root.s"});
    const run_step = b.step("run", "Open the browser, lol");
    _=run_step;
}
