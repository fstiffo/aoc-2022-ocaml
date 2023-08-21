let solution_1 input_path =
  (* Read the content of the file input_path into a string *)
  let ic = open_in input_path in
  let content = really_input_string ic (in_channel_length ic) in
  close_in ic;
  (* Split content in a list of string *)
  let lines = String.split_on_char '\n' content in
  (* Split list in a list of list of string *)
  let sequences =
    List.fold_left
      (fun acc s ->
        if s = "" then [] :: acc else (s :: List.hd acc) :: List.tl acc)
      [ [] ] lines
  in
  (* Convert list of list of string to list of int *)
  List.map (fun l -> List.map (fun s -> int_of_string s) l) sequences
  (* Sum sequence in list *)
  |> List.map (fun l -> List.fold_left (fun acc x -> acc + x) 0 l)
  (* Max sequence in list *)
  |> List.fold_left max min_int
