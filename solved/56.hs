digits :: Integral x => x -> [x]
digits x = if (abs x) < 10
  then [x]
  else digits (div x 10) ++ [mod x 10]

maximumDigitalSum :: Integral x => [x] -> x
maximumDigitalSum x = maximum $ map (sum . digits) x

main = print $ maximumDigitalSum [x^y | x <- range, y <- range]
  where range = [1..100]
