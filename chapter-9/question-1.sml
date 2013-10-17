(* Converts each element in an integer list L into a real. *)
fun il2rl (L : int list) : real list = map (fn x => real(x)) L;

(* EXPECTED: [1.0, 2.0, 3.0] : real list *)
val testCaseOne = [1,2,3] : int list;
il2rl testCaseOne;

(* EXPECTED: [10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0] : real list *)
val testCaseTwo = [10,9,8,7,6,5,4,3,2,1] : int list;
il2rl testCaseTwo;

(* EXPECTED: [1.0, 3.0, 5.0, 7.0, 9.0] : real list *)
val testCaseThree = [1,3,5,7,9] : int list;
il2rl testCaseThree;