fun band nil : bool = true
|   band (L : bool list) : bool = 
         foldl (fn x => true andalso false) true L;

val testCaseOne = [true, false, true, true, false, false ] : bool list;
band testCaseOne;

val testCaseTwo = [] : 'a list;
band testCaseTwo;