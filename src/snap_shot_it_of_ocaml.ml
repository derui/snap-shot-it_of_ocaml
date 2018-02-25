let instance = Js.Unsafe.pure_js_expr "require('snap-shot-it')"

let snapshot v =
  Js.Unsafe.fun_call instance [|Js.Unsafe.inject v|]
