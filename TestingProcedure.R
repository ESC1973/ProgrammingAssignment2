#testing Procedure with different examples

# Test nr.1, 3x3 matrix
Test1 = makeCacheMatrix(matrix(c(2, 4, 3, 1, 5, 7, 20, 1, 4), nrow=3,ncol=3)) 
Test1$get()
Test1$getInverse()
cacheSolve(Test1)
cacheSolve(Test1)
Test1$getInverse()


# Test nr.2, 2x2 matrix but should not work, correlated vectors singular
Test2 = makeCacheMatrix(matrix(c(2, 0, 4, 0), nrow=2,ncol=2)) 
Test2$get()
Test2$getInverse()
cacheSolve(Test2)
cacheSolve(Test2)
Test2$getInverse()

# Test nr.3, 3x3 matrix, as before but nicer
B<- matrix(c(2, 4, 3, 1, 5, 7, 20, 1, 4), nrow=3,ncol=3)
Test1 = makeCacheMatrix(B) 
Test1$get()
Test1$getInverse()
cacheSolve(Test1)
cacheSolve(Test1)
Test1$getInverse()
