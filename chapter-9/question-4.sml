(* Takes a list of pairs of integers and returns a list of the products of each pair *)
fun multpairs (L : (int * int) list) : int list = map (op * ) L;

(* EXPECTED:  *)
val testCaseOne = [(1,2),(3,4)] : (int * int) list;
multpairs testCaseOne;

(* EXPECTED:  *)
val testCaseTwo = [(5,6),(7,8)] : (int * int) list;
multpairs testCaseTwo;

(* EXPECTED:  *)
val testCaseThree = [(9,10),(11,12),(13,14)] : (int * int) list;
multpairs testCaseThree;