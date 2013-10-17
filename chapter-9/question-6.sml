(* Sums the square of each element in a list *)
fun sqsum (L : int list) : int = foldl (fn (x, sum) => (x * x) + sum) 0 L;

(* EXPECTED: 14 *)
val testCaseOne = [1,2,3] : int list;
sqsum testCaseOne;

(* EXPECTED: 77 *)
val testCaseTwo = [4,5,6] : int list;
sqsum testCaseTwo;

(* EXPECTED: 194 *)
val testCaseThree = [7,8,9] : int list;
sqsum testCaseThree;