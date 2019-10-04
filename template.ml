open Js_of_ocaml
open Js_of_ocaml_tyxml.Tyxml_js
open React
module RList = ReactiveData.RList

let select l =
  let open Html in
  let s, f = S.create None in
  ("" :: l) |>
  List.map (fun t -> option (txt t)) |>
  select ~a:[a_required (); a_onchange (fun e ->
    Js.Opt.iter e##.target (fun t ->
      Js.Opt.iter (Dom_html.CoerceTo.select t) @@ fun t ->
        if t##.selectedIndex = 0 then
          f None
        else
          f (Some t##.selectedIndex)
    );
    true
  )],
  s

let test questions answers =
  let l, sigs =
    List.map (fun q ->
      (* TODO slider? *)
      let e, s = select answers in
      (q, e), s
    ) questions |>
    List.split
  in
  let open Html in
  l |> List.map (fun (q, e) -> tr [
    td [txt q];
    td [e];
  ]) |>
  table ~a:[a_class ["q"]],
  Array.of_list sigs

let score s =
  (* TODO make it nicer *)
  let open R.Html in
  txt (s |> S.map (function
    | None -> "?"
    | Some x -> Printf.sprintf "%.2f" x
  ))

let results l =
  let open Html in
  form [
    l |> List.map (fun ((d, t), s) -> tr @@ [
      td [label [
        b [txt d];
        input ~a:[a_input_type `Checkbox] ();
        span [txt t]
      ]];
      td [score s];
    ]) |>
    table;
    input ~a:[a_input_type `Reset] ();
  ]

let app questions answers f =
  let t, s = test questions answers in
  let r = results (f s) in
  let open Html in
  div [
    h2 [txt "Questionnaire"];
    p [txt "Indiquez votre degré d’accord à chacun des énoncés :"];
    t;
    (* TODO button, hidden results... *)
    h2 [txt "Résultats"];
    r;
    p [txt "Votre profil indique quelles sont les composantes prédominantes de votre style de gestion de classe. Vous pouvez aussi comparer vos résultats avec ceux de collègues et, ainsi, mieux connaître vos caractéristiques personnelles."];
    p [txt "Cela dit, les opérations de validation de ce questionnaire n’étant pas encore tout à fait terminées, il est conseillé d’être prudent dans l’interprétation de vos résultats."];
  ]
