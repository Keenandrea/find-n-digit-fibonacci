fibo :: [Integer]
-- |by the same recursive logic I impl
-- |emented in part A, we find fn lazi
-- |ly, storing digits in a list of ty
-- |pe Integer which allows the values
-- |to break that 2^31 ceiling imposed
-- |on by Int type.
fibo = 0:1:zipWith (+) fibo (tail fibo)
digits :: Integer -> Bool
-- |then a new function, digits, is in
-- |troduced. digits swallows an Integ
-- |er and produces a Boolean hinged o
-- |n true if the digit length is 99..
-- |if true, then the corresponding Fi
-- |bonacci number is shown.
digits n = length (show n) == 100 
checkFibDigits :: Int -> Bool
-- |function composition: ( !! ) is a funct
-- |ion that takes a list ( [Integer] ) and
-- |an Int ( m - 1 ) then gives back one of 
-- |the thing in the list ( a ) i.e., xs !!
-- |i works like xs[i]. then the function d
-- |igits is called with the aforementioned
-- |'one of the thing in the list' as its a
-- |rgument. 
checkFibDigits m = digits (fibo !! (m - 1))
-- |filter filters the results of the 
-- |check function and creates a list
-- |of values that pass the condition
-- |al. the first element of the new 
-- |list is taken. 
displayFib = head (filter check [1..])
-- |since displayFib takes the first element
-- |of a list of fibonacci's with 100 digits
-- |displayFib-1 must be the array location 
-- |of the biggest number with 99 digits.     
main = do  
    print (last (take (displayFib - 1) fib))
