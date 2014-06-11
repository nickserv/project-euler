divisibleBy :: Int -> Int -> Bool
divisibleBy x y = mod y x == 0

multipleOf3Or5 :: Int -> Bool
multipleOf3Or5 x = divisibleBy 3 x || divisibleBy 5 x

multiplesOf3Or5Below :: Int -> [Int]
multiplesOf3Or5Below x = filter multipleOf3Or5 [0..x-1]

main = putStr $ show $ sum $ multiplesOf3Or5Below 1000