open Mocha_of_ocaml
module I = Snap_shot_it_of_ocaml

let () =
  "snap-shot-it binding" >::: [
    "should be able to take snapshot for simple values" >:: (fun () ->
        I.snapshot (Js.number_of_float 42.0);
        I.snapshot (Js.string "foo");
        assert_ok true
      );
    "should be able to take snapshot for structured values" >:: (fun () ->
        I.snapshot (Js.array [|Js.string "foo"; Js.string "bar"|]);
        I.snapshot (object%js
          val x = Js.number_of_float 80.0
          val longValue = Js.string "long-value"
          val array = Js.array [|Js.string "nested"|]
        end);
        assert_ok true
      );
  ]
