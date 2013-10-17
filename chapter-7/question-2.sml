(* Searches a list L for the element e. *)
fun member (e : ''a, nil) : bool = false
|   member (e : ''a, L : ''a list) : bool = 
      let
        (* From the given parameter e and the parameter list L,
         * test for equality with the head of the list and if 
         * this is false recursively apply the search function
         * to the tail of the input list. *)
        fun recursiveSearch (w : ''a, nil) : bool = false
        |   recursiveSearch (w : ''a, (u : ''a)::(v : ''a list)) : bool = 
              if (w = u) then true
              else recursiveSearch(w, v)
      in
        recursiveSearch(e, L)
      end;

(* The element IS contained in the list. *)
val testCaseOne = (#"a", [#"e", #"d", #"c", #"b", #"a"]);
member testCaseOne;

(* The element IS NOT contained in the list. *)
val testCaseTwo = (5, [1,2,3,4,6]);
member testCaseTwo;

(* The function member is given an EMPTY list as a parameter 
 * to test the base case. *)
val testCaseThree = (true, []);
member testCaseThree;