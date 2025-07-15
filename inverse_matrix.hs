-- 1. find the determinant

determinant3x3 :: [[Dobule]] -> Dobule -- Number instead? not sure
determinant3x3 [[a,b,c],[d,e,f],[g,h,i]] = 
a*(e*i - f*h) - b*(d*i - f*g) + c*(d*h - e*g)
determinant3x3 = error "Wrong dimensions, mst be 3x3"

-- 2. 

main :: IO()

main = do 
  putStrLn $ "Learning Inverse Matrix Operations" 


