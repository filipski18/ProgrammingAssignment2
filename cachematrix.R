## Put comments here that give an overall description of what your
## functions do

#  "matrix" object that is able to cache its inverse.

# list containing a function to
makeCacheMatrix <- function(x = matrix()) {
# stored inverse value to NULL
    inve <- NULL
    set <- function(y) {
   x <<- y
   inve <<- NULL                
}
     get <- function() x
    setinve <- function(inve) inve <<- inve
    getinve <- function() inve
# return a list of all the above functions
    list(set = set, get = get,
    setinve = setinve,
    getinve = getinve)
}


## Write a short comment describing this function

## Return the inverse of the special
## "matrix" created 
       cacheSolve <- function(x, ...) {
      inve <- x$getinve()
      if(!is.null(inve)) {
     message("getting cached data")
    return(inve)
}
   data <- x$get()
   inve <- solve(data, ...)
   x$setinve(inve)
   inve
}


}
