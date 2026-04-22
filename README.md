# zig_on_wasm_example
it's an example on how to compile zig for wasm
## Dependencies
- Zig (duh)
- LLVM (for wasm-ld, zig's wasm-ld doesn't export anything, but _start for some reason)
- Node.js (it's needed to encode to base64, you can omit making `root.wasm.base64.js` and load `root.wasm` normally. Then you don't have to encode. Or you can write zig code to encode and write file.)

## Compiling
```bash
zig build
```
## Running
open `zig-out/index.html` in browser.

