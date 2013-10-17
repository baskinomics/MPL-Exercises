(* Searches a list to see if any two consecutive elements are equal. *)
fun repeats (nil) : bool = false
|   repeats ((u : ''a) :: nil) = false
|   repeats ((u : ''a) :: (v : ''a list)) : bool =
      if (u = hd v) then true
      else repeats(v)

(* EXPECTED: false 
 * Testiing the first base case *)
val testCaseOne = nil;
repeats testCaseOne;

(* EXPECTED: false 
 * Testing the second base case*)
val testCaseTwo = [#"a"];
repeats testCaseTwo;

(* EXPECTED: true 
 * Testing the inductive case *)
val testCaseThree = [1,2,3,4,4];
repeats testCaseThree;