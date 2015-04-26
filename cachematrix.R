# Thomas Hepner
# Coursera: R Programming
# Assignment 2
# 4/25/2015

## Make and Cache Matrix
## Invert Matrix and Cache It

## creates a special "matrix"
makeCacheMatrix = function(x = matrix()) {
  minv = NULL
  set = function(y) {
    x <<- y
    m <<- NULL
  }
  get = function() x
  setminv = function(inverse) minv <<- inverse
  getminv = function() minv
  list(set = set, get = get,
       setminv = setminv,
       getminv = getminv)
}


## Calculates the inverse of the special "matrix" created makeCacheMatrix()
cacheSolve <- function(x, ...) {
  minv <- x$getminv()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data, ...)
  x$setminv(minv)
  minv
}
