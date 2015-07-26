## Put comments here that give an overall description of what your
## functions do

## This functions creates a cache for a matrix object

makeCacheMatrix <- function(x = matrix()) {
  # i for inverse
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) m <<- inv
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## This function calculates the inverse of a matrix

cacheSolve <- function(x, ...) {
  
  i <- x$getinverse()
  print(x)
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}