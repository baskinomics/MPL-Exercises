fun dupList nil = nil
|   dupList [x : 'a] = x :: x :: []
|   dupList ((x : 'a) :: (y : 'a list)) =
        x :: x :: dupList(y);

val testCaseOne = [1,2,3,4] : int list;
dupList testCaseOne;