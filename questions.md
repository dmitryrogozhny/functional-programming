I. BASIC FUNCTIONS, CONDITIONS
HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

1. Write a function that calculates the sum of two integer numbers.
e.g. sum2 2 5 = 7

2. Write a function that calculates the sum of four integer numbers.
Try to use the function from the question #1 as a helper.
e.g. sum4 1 3 4 2 = 10

3. For two numbers, return a string describing wether the first one is less, equal to, or bigger than the second one
e.g.
compareNumbers 1 2 = "less"
compareNumbers 2 2 = "equal"
compareNumbers 3 2 = "more"

4. For a string describing a digit, return an integer number. Return -1 if the string does not represent a digit.
e.g.
digitFromString "zero" = 0
digitFromString "five" = 5
digitFromString "eleven" = -1


II. TUPLES
HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

5. Write a function that gets two integers and a string and returns a tuple with that data
e.g. singleZip 1 15 "this is string" = (1, 15, "this is string")

6. Write a function that returns the first element from a tuple.
Make it work for pairs (i.e. tupes with two values) of any type.
e.g.
first (1, "on") = 1
first (False, 1.8) = False


III. LISTS
HINT: Use http://learnyouahaskell.com/syntax-in-functions if you need help with questions.

7. Write a function that gets three integers and returns a list with these values.
e.g. toList 1 3 5 = [1, 3, 5]

8. Write a function that returns the first element from a list. Make it work for all types.
If the list is empty, fail with an error (i.e. error "Your error message goes like here and all.")
e.g.
myHead [1, 3, 5] = 1
myHead ["one", "two", "three"] = "one"
myHead [] = Exception: Your error message goes like here and all.

9. Write a function that returns the second element from a list. Make it work for all types.
If the list is empty, fail with an error (i.e. error "List has got less than two elements")
e.g.
mySecond [1, 3, 5] = 3
mySecond ["one", "two", "three"] = "two"
mySecond [] = Exception: List has got less than two elements.

10. Write a function that describes whether the list is empry, has got a single element, or more than one.
e.g.
describeList [] = "empty list"
describeList [1] = "single value"
describeList [1, 2] = "more than one"

IV. RECURSION
HINT: Use http://learnyouahaskell.com/recursion if you need help with questions.

11. Write a function that returns a length of a list. Make it work for any type.
e.g.
myLength [] = 0
myLength [1, 2, 3] = 3
myLength "Go go go" = 8

12. Write a function that calculates the sum of integers in a list
mySum [] = 0
mySum [1, 2, 3] = 6

13. Write a function that returns a product of integers in a list
myProduct [1, 2, 5] = 10

14. Write a function that returns a maximum value from a list
myMax [1, 2, 3] = 3

15. Write a function that gets an integer k and a symbol c and returns a string of length k with symbols c.
e.g.
myReplicate 10 'A' = "AAAAAAAAAA"

16. Reverse items in a list.
e.g.
myReverse "12345" = "54321"
myReverse [1, 2, 3, 4, 5] = [5, 4, 3, 2, 1]

17. Define if the integer is a member of a list.
e.g.
myElem 1 [1, 2, 3] = True
myElem 10 [1, 2, 3] = False

18. Write function that for two lists of the same size returns a list of tuples.
e.g. myZip [1, 2, 3] ["one", "two", "three"] = [(1, "one"), (2, "two"), (3, "three")]

19. Make function from #11 work with lists of unequal sizes. Return only pairs.
e.g. myZip2 = [1, 2] ["one", "two", "three"] = [(1, "one"), (2, "two")]


V. HIGHER ORDER FUNCTIONS
HINT: Use http://learnyouahaskell.com/higher-order-functions if you need help with questions.

20. Write a function that doubles each integer in a list.
Use standard map function, its signature is map :: (a -> b) -> [a] -> [b]
map function gets a function and a list, and applies the function to each element in the list.
e.g. doubleList [1, 2, 3] = [2, 4, 6]

21. Write a function that filters out all values from a list that are greater than 10.
Use standard filter function with signature filter :: (a -> Bool) -> [a] -> [a]
filter function gets a function that returns Bool and a list.
It applies the function to each element and returns a list with elements that had True as the result of function evaluation.
e.g. greaterThan10 [1, 20, 30, 4] = [20, 30]

22. Write a function that calculates the sum of all numbers in a list.
Use standard foldl function for that, foldl :: (a -> b -> a) -> a -> [b] -> a
foldl function get a function, an accumulator, and a list.
It runs a function for each element of a list, getting two arguments: current element and an accumulator.
e.g. mySumList [1, 2, 3, 4] = 10

23. Write your own function that applies a function to each item in a list.
e.g.
myMap (+1) [1, 2, 3] = [2, 3, 4]
myMap (\s -> s ++ "!") ["one", "two", "three"] = ["one!", "two!", "three!"]

24. Write your own function that receives a filtering function and a list, and returns a filtered list.
Filtering function gets a single argument and returns either True of False.
e.g.
myFilter (\x -> x /= 3) [1, 2, 3, 4] = [1, 2, 4]

25. Write your own folding function.
The function gets three arguments: a function that gets applied to each element and accumulator, an accumulator that stores final value, and a list of integers.
e.g.
myFold (\elem accumulator -> elem + accumulator) 0 [1, 5, 10] = 16 - each element is added to the accumulator, i.e. sum of all elements
myFold (\elem accumulator -> elem * accumulator) 1 [1, 5, 10] = 50 - product of all elements
