-- Determinant
-- Example:
-- -2 5
--  3 4
-- https://immersivemath.com/ila/ch07_determinants/ch07.html
-- Function Matrix A => value
-- 1D: A = (a), length + sign of the vector
-- det(A) = a_11*a_22 - a_12*a_21
-- 2D: we have 2 columns (vectors) their determinant is the area (with sign)
-- 3D: we have 3 vectors i guess
determinant2x2 :: Num a => [[a]] -> a
determinant2x2 [[a, b], [c, d]] = a * d - b * c
determinant2x2 _ = error "Input must be a 2x2 matrix."


main :: IO ()
-- haskell compiler looks for main as entry
-- :: means has the type of
-- IO type "monad" (side effectts r/w)
-- IO communicattes with outside world
-- () -> void

main = do
    putStrLn $ "Learning about determinants using Haskell"
    let matrix = [[-2, 5], [3, 4]]
    let det = determinant2x2 matrix
    putStrLn $ "Calculating the determinant of " ++ show matrix
    putStrLn $ "Result: " ++ show det
