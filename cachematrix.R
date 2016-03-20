## Week3-Assignment: Assignment: Programming Assignment 2: Lexical Scoping 
#As in the example of cache mean. This function's goal is to calculate the 
#inverse of a specified matrix. Since this might be computing very intense.
#The function should create a cache result and then go to final calculation

# First I must create the makecache function to create a special matrix object that
# it will conduct= cache its inverse.
#This will be makeCacheMatrix

## Second. I create a function that will compute the inverse of the special matrix
#This will be cacheSolve

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  } #This is exactly the same as in the mean example, only change matrix
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv #naming it inv for the Inverse of matrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Second part. I create a function that will compute the inverse of the special matrix


cacheSolve <- function(x, ...) {
  ## This will return another matrix that is the inverse of the input matrix x
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("Getting cached data")
    return(inv)
  }
  Matrix <- x$get()
  inv <- solve(Matrix, ...) #Computing the inverse of a square matrix can be done with the solve function
  x$setInverse(inv)
  inv
}