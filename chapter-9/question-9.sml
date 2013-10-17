fun bxor nil : bool = false
|   bxor (L : bool list) : bool =
        foldl (fn x => not (true andalso false)) false L;

val testCaseOne = [true, true, false, true] : bool list;
bxor testCaseOne;

val testCaseTwo = [true, true, true, false, true] : bool list;
bxor testCaseTwo;