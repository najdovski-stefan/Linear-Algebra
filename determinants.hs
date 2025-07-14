-- Determinant
-- Example:
-- -2 5
--  3 4
-- Function Matrix A => value
-- 1D: A = (a), length + sign of the vector
-- det(A) = a_11*a_22 - a_12*a_21
-- 2D: we have 2 columns (vectors) their determinant is the area (with sign)
-- 3D: we have 3 vectors i guess we have volume (the determinant is the volume)
-- the form is parallelepiped

-- 2D
-- For any numeric type `a`, takes a list of lists (`[[a]]`) and returns a single value (`a`).
-- Num a => [[a]] -> a
determinant2x2 :: Num a => [[a]] -> a
determinant2x2 [[a, b], [c, d]] = a * d - b * c
determinant2x2 _ = error "Input must be a 2x2 matrix."



plusOne :: Num a => a -> a
plusOne a = a + 1

sumList :: Num a => [a] -> a
sumList [] = 0
sumList (x:xs) = x + sumList xs

main :: IO ()
-- haskell compiler looks for main as entry
-- :: means has the type of
-- IO type "monad" (side effectts r/w)
-- IO communicattes with outside world
-- () -> void

main = do
    putStrLn $ "Learning about determinants using Haskell"

    --unreleated, learning some syntax
    let some_num = plusOne 5
    putStrLn $ "Plus one:" ++ show some_num

    -- sum array of elements
    let numbers = [1, 2, 3, 10]-- 1+(2+(3+(10+ sumList []))
    let total = sumList numbers
    putStrLn $ "SUM OF LIST: " ++ show total

    let matrix = [[-2, 5], [3, 4]]
    let det = determinant2x2 matrix


    putStrLn $ "Calculating the determinant of " ++ show matrix
    putStrLn $ "Result: " ++ show det
