fun bor nil : bool = false
|   bor (L : bool list) : bool = 
        foldl (fn x => true orelse false) true L;

val testCaseOne = [true, false, true, true, false, false ] : bool list;
bor testCaseOne;

val testCaseTwo = [] : 'a list;
bor testCaseTwo;

