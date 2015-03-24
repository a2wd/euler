-- Problem_2.hs
--
-- Solution to https://projecteuler.net/problem=2
-- Find the sum of the even valued fibonacci terms that do not exceed four-million
fib = sum [ x | x <- takeWhile (<= 4000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

main = putStrLn $ show(fib)
