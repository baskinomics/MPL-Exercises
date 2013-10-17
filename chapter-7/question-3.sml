(* Searches a list L for all the elements that are less than an element e *)
fun less (e : int, nil) : int list = nil
|   less (e : int, L : int list) : int list =
      let
      (* From the given parameter e and the parameter list L,
       * test if the head of the list is less than e. If true
       * cons the element to the resulting list produced by
       * calling recurseLess() on the tail of the input list. 
       * If false then call recursiveLess on the tail of the 
       * input list. *)
        fun recursiveLess (w : int, nil) : int list = nil
        |   recursiveLess (w : int, (u : int) :: (v : int list)) : int list = 
              if (u < w) then  u :: recursiveLess(w, v)
              else recursiveLess(w, v)
        in
          recursiveLess(e, L)
        end;

(* EXPECTED: [] 
 * Testiing the base case *)
val testCaseOne = (17, []);
less testCaseOne;

(* EXPECTED: [2,1]
 * Testing the inductive case *)
val testCaseTwo = (3, [6,5,4,2,1]);
less testCaseTwo;

(* EXPECTED: [15, 27, 17, 35]
 * Testing the inductive case *)
val testCaseThree = (50, [100,15,93,27,17,88,35]);
less testCaseThree;