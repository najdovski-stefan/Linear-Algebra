-- Step 1. find the determinant of a matrix
determinant3x3 :: [[Dobule]] -> Dobule -- Number instead? not sure
determinant3x3 [[a,b,c],[d,e,f],[g,h,i]] = 
a*(e*i - f*h) - b*(d*i - f*g) + c*(d*h - e*g)
determinant3x3 = error "Wrong dimensions, mst be 3x3"

-- Step 2. Each element is replaced with 2x2 determin... with sign pattern
-- _________
-- | + - + |
-- | - + - |
-- | + - + |
-- _________

cofactor3x3 :: [[Double]] -> [[Double]]
cofactor3x3 [[a,b,c],[d,e,f],[g,h,i]] =
  [ [  e*i - f*h, -(d*i - f*g),  d*h - e*g ],
    [-(b*i - c*h),  a*i - c*g, -(a*h - b*g)],
    [  b*f - c*e, -(a*f - c*d),  a*e - b*d ] ]
cofactor3x3 _ = error "Matrix must be 3x3"



main :: IO()
    putStrLn $ "Learning Inverse Matrix Operations" 

