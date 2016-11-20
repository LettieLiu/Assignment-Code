
 Q1:
 ## Write a short comment describing this function

- makeCacheMatrix <- function(x = matrix()) 
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()  x
  setSolve <- function(solve)  m <<- solve
  getSolve <- function()  m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)}

## The function sets the value of the matrix, gets the value of the matrix, inverses the matrix and gets the result of the inverse.


 
 Q2:
 ## Write a short comment describing this function
- cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
  m <-  x$getSolve()
  if(! is.null(m)) {
    message("getting cached data")
    return(m)
  }  data <-  x$get()
  m <-  solve(data, ... )
  x$setSolve(m)
  m
}

## The function checks whether the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix.
 
