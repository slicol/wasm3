set WasmProg=G:\Project\wasm3\platforms\cpp\wasm\test_prog.c
set WasmByte=G:\Project\wasm3\platforms\cpp\wasm\test_prog.wasm


::clang --target=wasm32 --no-standard-libraries -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -o %WasmByte% %WasmProg%
::clang @BuildWasmTest.rsp -o %WasmByte% %WasmProg%
clang @BuildWasmTest.rsp -o %WasmByte%


pause