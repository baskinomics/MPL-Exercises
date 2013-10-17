(* Converts each element in a char list L into its corresponding integer value. *)
fun ordlist (L : char list) : int list = map (fn x => ord(x)) L;

(* EXPECTED: [65,98,67] : int list *)
val testCaseOne = [#"A",#"b",#"C"] : char list;
ordlist testCaseOne;

(* EXPECTED: [90,121,88] : int list *)
val testCaseTwo = [#"Z",#"y",#"X"] : char list;
ordlist testCaseTwo;

(* EXPECTED: [115,101,97] : int list *)
val testCaseThree = [#"s",#"e",#"a"] : char list;
ordlist testCaseThree;