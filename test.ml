(* FIXME directly link questions with classes *)

let eval classes =
  let open Utils in
  avg |> eval (List.combine classes [
    [1; 8; 15; 22];
    [2; 9; 16; 23];
    [3; 10; 17; 24];
    [4; 11; 18; 25];
    [5; 12; 19; 26; 27];
    [6; 13; 20];
    [7; 14; 21];
  ])
