open Js_of_ocaml
open Js_of_ocaml_tyxml.Tyxml_js

let () =
  let open Dom_html in
  ignore @@ Dom_events.listen document Event.domContentLoaded (fun _ _ ->
    let t =
      Template.app Fr.questions Fr.answers (Test.eval Fr.classes) |>
      To_dom.of_element
    in
    ignore @@ Dom_html.document##.body##appendChild (t :> Dom.node Js.t);
    true
  )
