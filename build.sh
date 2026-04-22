mkdir -p zig-out
zig build-obj src/root.zig -target wasm32-freestanding -O ReleaseSmall -femit-asm
wasm-ld root.o -o root.wasm --no-entry --export-all
node encode.node.js
cp src/index.html zig-out
mv root.wasm zig-out
mv root.wasm.base64.js zig-out
rm root.o
rm root.s
