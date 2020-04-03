## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     
     set <- function(z) {
          x <<- z
          m <<- NULL
     }
     get <- function() x
     setinverse <- function(inverse) m <<- inverse
     getinverse <- function() m
     list(set = set,
          get = get,
          setinverse = setinverse,
          getinverse = getinverse)
     
}

## Write a short comment describing this function
## This function creates a list containing the set function and get function
## The list also contains the set inverse and get inverse function

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m <- x$getinverse()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     m <- solve(data, ...)
     x$setinverse(m)
     m
}
  ## This function calculates the inverse of the given matrix.
  ## First, it checks if the inverse of a matrix has been calculated. 
  ## If so, the inverse is retrieved  and returned.
  ## If not, the inverse is calculated,stored in the cache and returned to console. 

