fs = require ("fs")
const wasm_source = fs.readFileSync("root.wasm")
fs.writeFileSync("root.wasm.base64.js", `const wasm_base64_str = atob("${wasm_source.toString('base64')}");const wasm_base64 = new Uint8Array(wasm_base64_str.length);for (var i in wasm_base64_str) wasm_base64[i] = wasm_base64_str.charCodeAt(i);`);


