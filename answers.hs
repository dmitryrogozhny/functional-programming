-- I. BASIC FUNCTIONS, CONDITIONS
-- HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

-- 1. Write a function that calculates the sum of two integer numbers.
-- e.g. sum2 2 5 = 7
sum2 :: Int -> Int -> Int
sum2 a b =
    a + b

-- 2. Write a function that calculates the sum of four integer numbers.
-- Try to use the function from the question #1 as a helper.
-- e.g. sum4 1 3 4 2 = 10
sum4 :: Int -> Int -> Int -> Int -> Int
sum4 a b c d =
    sum2 (sum2 a b) (sum2 c d)

-- 3. For two numbers, return a string describing wether the first one is less, equal to, or bigger than the second one
-- e.g.
-- compareNumbers 1 2 = "less"
-- compareNumbers 2 2 = "equal"
-- compareNumbers 3 2 = "more"
compareNumbers :: Int -> Int -> String
compareNumbers a b =
    if (a < b)
        then "less"
        else if (a == b)
            then "equal"
            else
                "more"

-- 4. For a string describing a digit, return an integer number. Return -1 if the string does not represent a digit.
-- e.g.
-- digitFromString "zero" = 0
-- digitFromString "five" = 5
-- digitFromString "eleven" = -1
digitFromString :: String -> Int
digitFromString str =
    case str of
        "zero" -> 0
        "one" -> 1
        "two" -> 2
        "three" -> 3
        "four" -> 4
        "five" -> 5
        "six" -> 6
        "seven" -> 7
        "eight" -> 8
        "nine" -> 9
        _ -> -1


-- II. TUPLES
-- HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

-- 5. Write a function that gets two integers and a string and returns a tuple with that data
-- e.g. singleZip 1 15 "this is string" = (1, 15, "this is string")
singleZip :: Int -> Int -> String -> (Int, Int, String)
singleZip x y str =
    (x, y, str)


-- 6. Write a function that returns the first element from a tuple.
-- Make it work for pairs (i.e. tupes with two values) of any type.
-- e.g.
-- first (1, "on") = 1
-- first (False, 1.8) = False
first :: (a, b) -> a
first (x, _) =
    x

-- III. LISTS
-- HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

-- 7. Write a function that gets three integers and returns a list with these values.
-- e.g. toList 1 3 5 = [1, 3, 5]
toList :: Int -> Int -> Int -> [Int]
toList x y z =
    x:y:z:[]
    -- Alternative notation:
    -- [x, y, z]

-- 8. Write a function that returns the first element from a list. Make it work for all types.
-- If the list is empty, fail with an error (i.e. error "Your error message goes like here and all.")
-- e.g.
-- myHead [1, 3, 5] = 1
-- myHead ["one", "two", "three"] = "one"
-- myHead [] = Exception: Your error message goes like here and all.
myHead :: [a] -> a
myHead [] =
    error "Cannot get a head of an empty list."
myHead (x:xs) =
    x
-- as we're not using xs here, we can use underscore instead:
-- myHead (x:_)
--   x
-- This is to show that this part won't be used.


-- 9. Write a function that returns the second element from a list. Make it work for all types.
-- If the list is empty, fail with an error (i.e. error "List has got less than two elements")
-- e.g.
-- mySecond [1, 3, 5] = 3
-- mySecond ["one", "two", "three"] = "two"
-- mySecond [] = Exception: List has got less than two elements.
mySecond :: [a] -> a
mySecond (first:second:xs) =
    second
mySecond [] =
    error "List has got no elements"
mySecond (x:xs) =
    error "List has got a single element"


-- 10. Write a function that describes whether the list is empry, has got a single element, or more than one.
-- e.g.
-- describeList [] = "empty list"
-- describeList [1] = "single value"
-- describeList [1, 2] = "more than one"
describeList :: [a] -> String
describeList [] =
    "empty list"
describeList (x:[]) =
    "single value"
describeList _ =
    "more than one"


-- IV. RECURSION
-- HINT: Use http://learnyouahaskell.com/recursion if you need help with questions.

-- 11. Write a function that returns a length of a list. Make it work for any type.
-- e.g.
-- myLength [] = 0
-- myLength [1, 2, 3] = 3
-- myLength "Go go go" = 8
myLength :: [a] -> Int
myLength [] =
    0
myLength (x:xs) =
    1 + myLength xs

-- 12. Write a function that calculates the sum of integers in a list
-- mySum [] = 0
-- mySum [1, 2, 3] = 6
mySum :: [Int] -> Int
mySum [] =
    0
mySum (x:xs) =
    x + mySum xs

-- 13. Write a function that returns a product of integers in a list
-- myProduct [1, 2, 5] = 10
myProduct :: [Int] -> Int
myProduct [] =
    1
myProduct (x:xs) =
    x * myProduct xs

-- 14. Write a function that returns a maximum value from a list
-- myMax [1, 2, 3] = 3
myMax :: [Int] -> Int
myMax [] =
    error "Cannot find max in an empty list"
myMax (x:xs) =
    myMaxInternal xs x

myMaxInternal :: [Int] -> Int -> Int
myMaxInternal [] currentMax =
    currentMax
myMaxInternal (x:xs) currentMax =
    if (x > currentMax)
        then myMaxInternal xs x
        else myMaxInternal xs currentMax

-- 15. Write a function that gets an integer k and a symbol c and returns a string of length k with symbols c.
-- e.g.
-- myReplicate 10 'A' = "AAAAAAAAAA"
myReplicate :: Int -> Char -> String
myReplicate 0 c =
    ""
myReplicate n c =
    c : myReplicate (n - 1) c

-- 16. Reverse items in a list.
-- e.g.
-- myReverse "12345" = "54321"
-- myReverse [1, 2, 3, 4, 5] = [5, 4, 3, 2, 1]
myReverse :: [a] -> [a]
myReverse [] =
    []
myReverse (x:xs) =
    (myReverse xs) ++ [x]

-- 17. Define if the integer is a member of a list.
-- e.g.
-- myElem 1 [1, 2, 3] = True
-- myElem 10 [1, 2, 3] = False
myElem :: Int -> [Int] -> Bool
myElem elem [] =
    False
myElem elem (x:xs) =
    if (elem == x)
        then True
        else myElem elem xs

-- 18. Write function that for two lists of the same size returns a list of tuples.
-- e.g. myZip [1, 2, 3] ["one", "two", "three"] = [(1, "one"), (2, "two"), (3, "three")]
myZip :: [a] -> [b] -> [(a, b)]
myZip [] [] =
    []
myZip (x:xs) (y:ys) =
    (x, y) : myZip xs ys


-- 19. Make function from #11 work with lists of unequal sizes. Return only pairs.
-- e.g. myZip2 = [1, 2] ["one", "two", "three"] = [(1, "one"), (2, "two")]
myZip2 :: [a] -> [b] -> [(a, b)]
myZip2 [] _ =
    []
myZip2 _ [] =
    []
myZip2 (x:xs) (y:ys) =
    (x, y) : myZip2 xs ys


-- V. HIGHER ORDER FUNCTIONS
-- HINT: Use http://learnyouahaskell.com/higher-order-functions if you need help with questions.

-- 20. Write a function that doubles each integer in a list.
-- Use standard map function, its signature is map :: (a -> b) -> [a] -> [b]
-- map function gets a function and a list, and applies the function to each element in the list.
-- e.g. doubleList [1, 2, 3] = [2, 4, 6]
doubleList :: [Int] -> [Int]
doubleList xs =
    map (*2) xs
-- NOTE: this works withiout 'xs' as well
-- doubleList = map (*2)

-- 21. Write a function that filters out all values from a list that are greater than 10.
-- Use standard filter function with signature filter :: (a -> Bool) -> [a] -> [a]
-- filter function gets a function that returns Bool and a list.
-- It applies the function to each element and returns a list with elements that had True as the result of function evaluation.
-- e.g. greaterThan10 [1, 20, 30, 4] = [20, 30]
greaterThan10 :: [Int] -> [Int]
greaterThan10 = filter (\x -> x > 10)

-- 22. Write a function that calculates the sum of all numbers in a list.
-- Use standard foldl function for that, foldl :: (a -> b -> a) -> a -> [b] -> a
-- foldl function get a function, an accumulator, and a list.
-- It runs a function for each element of a list, getting two arguments: current element and an accumulator.
-- e.g. mySumList [1, 2, 3, 4] = 10
mySumList :: [Int] -> Int
mySumList xs = foldl (\x acc -> x + acc) 0 xs

-- 23. Write your own function that applies a function to each item in a list.
-- e.g.
-- myMap (+1) [1, 2, 3] = [2, 3, 4]
-- myMap (\s -> s ++ "!") ["one", "two", "three"] = ["one!", "two!", "three!"]
myMap :: (a -> b) -> [a] -> [b]
myMap f [] =
    []
myMap f (x:xs) =
    f x : myMap f xs

-- 24. Write your own function that receives a filtering function and a list, and returns a filtered list.
-- Filtering function gets a single argument and returns either True of False.
-- e.g.
-- myFilter (\x -> x /= 3) [1, 2, 3, 4] = [1, 2, 4]
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f [] =
    []
myFilter f (x:xs) =
    if (f x)
        then x : myFilter f xs
        else myFilter f xs

-- 25. Write your own folding function.
-- The function gets three arguments: a function that gets applied to each element and accumulator, an accumulator that stores final value, and a list of integers.
-- e.g.
-- myFold (\elem accumulator -> elem + accumulator) 0 [1, 5, 10] = 16 - each element is added to the accumulator, i.e. sum of all elements
-- myFold (\elem accumulator -> elem * accumulator) 1 [1, 5, 10] = 50 - product of all elements
myFold :: (a -> b -> a) -> a -> [b] -> a
myFold f acc [] =
    acc
myFold f acc (x:xs) =
    myFold f (f acc x) xs

