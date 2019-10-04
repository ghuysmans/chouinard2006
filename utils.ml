let map f = function
  | None -> None
  | Some x -> Some (f x)

let avg l =
  List.fold_left (fun acc x ->
    match acc, x with
    | None, _ | _, None -> None
    | Some acc, Some x -> Some (acc +. float_of_int x)
  ) (Some 0.) l |>
  map (fun sum -> sum /. (float_of_int (List.length l)))

open React

(* beware, the order is reversed *)
let of_list l =
  S.merge (fun acc x -> x :: acc) [] l

let eval l f a =
  l |> List.map (fun (p, src) ->
    p,
    List.map (fun i -> Array.get a (i - 1)) src |> of_list |> S.map f
  )
