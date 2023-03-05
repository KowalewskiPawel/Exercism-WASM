(module
  (import "console" "log_mem_as_utf8" (func $log_mem_as_utf8 (param $byteOffset i32) (param $length i32)))
  (memory (export "mem") 1)

  ;; Initializes the WebAssembly Linear Memory with a UTF-8 string of 14 characters starting at offset 64
  (data (i32.const 64) "Hello, World!")
  
  ;; Returns the base offset and length of the greeting
  (func (export "hello") (result i32 i32)
    (i32.const 64) (i32.const 13)
  )
)
