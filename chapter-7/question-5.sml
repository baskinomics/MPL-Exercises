(* Evaluates a polynomial expression. *)
fun eval (coefficients : real list, x : real) : real =
      let
        (* Find the length of the coefficient list *)
        fun length nil : int = 0
        |   length ((u : real) :: (v : real list)) : int = 
              1 + length(v);

        (* Define variable for the length of the coefficient list*)
        val power = (length(coefficients) - 1) : int;

        (* Reverse the coefficient list *)
        fun reverse nil : real list= nil
        |   reverse ((first : real) :: (rest : real list)) : real list = reverse rest @ [first];

        (* Define variable for the reversed list *)
        val reverseList = reverse(coefficients) : real list;

        (* Calculates the value of the exponential expression y^n *)
        fun pow(y : real, n : int) : real =
          if (n = 0) then real(1)             
          else y * pow(y, n-1);

        (* Calculates the product of each coefficient and x, returns a list of those values *)
        fun recursiveEval (nil, p : real, q : int) : real list = []
        |   recursiveEval (((a : real) :: nil), p : real, q : int) : real list = [a * pow(p,q)]
        |   recursiveEval (((a : real) :: (b : real list)), p : real, q : int) : real list =
              (a * pow(p, q)) :: recursiveEval(b, p, q - 1)
        
        (* Define variable for the list of products *)
        val prodList = recursiveEval(reverseList, x, power)

        fun listSum (nil) : real = real(0)
        |   listSum ((r : real) :: nil) : real = r
        |   listSum ((r : real) :: (s : real list)) : real =
              r + listSum(s)

      in
        listSum prodList
      end;

(* TEST CASE: 2x^2 + 6x + 1, where x = 2
 * EXPECTED: 21 *)
val testCaseOne = ([1.0, 6.0, 2.0], 2.0) : real list * real;
eval testCaseOne;

(* TEST CASE: 3x^2 + 5x + 1, where x = 2
 * EXPECTED: 23 *)
val testCaseTwo = ([1.0, 5.0, 3.0], 2.0) : real list * real;
eval testCaseTwo;

(* TEST CASE: x^3 - 2x ,where x = 2
 * EXPECTED: 4 *)
val testCaseThree = ([0.0, ~2.0, 0.0, 1.0], 2.0) : real list * real;
eval testCaseThree;