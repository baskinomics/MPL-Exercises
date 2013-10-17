(* Squares each integer element in list L *)
fun squarelist (L : int list) : int list = map (fn x => x * x) L;

(* EXPECTED: [1, 4, 9, 16] : int list *)
val testCaseOne = [1,2,3,4] : int list;
squarelist testCaseOne;

(* EXPECTED: [25, 36, 49, 64] : int list *)
val testCaseTwo = [5,6,7,8] : int list;
squarelist testCaseTwo;

(* EXPECTED: [81, 100, 121, 144] : int list *)
val testCaseThree = [9,10,11,12] : int list;
squarelist testCaseThree;