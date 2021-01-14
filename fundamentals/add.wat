(module
    (func $add (param $lhs i32) (param $rhs i32) (result i32)
        (i32.add
            (get_local $lhs)
            (get_local $rhs)))
    (export "add" (func $add)))

;; example call
;; (call $add (i32.const 5) (i32.const 10))

;; wasm-objdump add.wasm -x

;; add.wasm:       file format wasm 0x1

;; Section Details:

;; Type[1]:
;;  - type[0] (i32, i32) -> i32
;; Function[1]:
;;  - func[0] sig=0 <add>
;; Export[1]:
;;  - func[0] <add> -> "add"
;; Code[1]:
;;  - func[0] size=7 <add>