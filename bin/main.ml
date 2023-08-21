open Lib

(* let () = print_endline (Int.to_string (Day01.solution_1 "day01.txt")) *)


let () =
  let result = Math.add 2 3 in
  print_endline (string_of_int result);
  let result = Math.sub 3 1 in
  print_endline (string_of_int result)