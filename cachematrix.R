## Put comments here that give an overall description of what your
## functions do
#Cache the inverse of a matrix to reduce the computational time in case of repeated matrix

## Write a short comment describing this function
##Create the special "matrix" object by creating a list os set,get,setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function
#compute the inverse of the "matrix" object. if the inverse has already been calculated, returns it from the cache.

cacheSolve <- function(x, ...) {
m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
