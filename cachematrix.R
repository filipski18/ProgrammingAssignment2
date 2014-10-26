## Put comments here that give an overall description of what your
## functions do

#  "matrix" object that is able to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
   i <- NULL
   set <- function(y){
       x <<- y
    i <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) i <<- inverse
      getinverse <- function() i
     list(set= set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
