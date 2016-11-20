> makeVector <- function(x = numeric()) {
  +     m <- NULL
  +     set <- function(y) {
    +         x <<- y
    +         m <<- NULL
    +     }
  +     get <- function() x
  +     setmean <- function(mean) m <<- mean
  +     getmean <- function() m
  +     list(set = set, get = get,
             +          setmean = setmean,
             +          getmean = getmean)
  + }
> 
  > ##The function sets the value of the matrix, gets the value of the matrix, inverses the matrix and gets the result of the inverse.
  > 
  > 
  > cachemean <- function(x, ...) {
    +     m <- x$getmean()
    +     if(!is.null(m)) {
      +         message("getting cached data")
      +         return(m)
      +     }
    +     data <- x$get()
    +     m <- mean(data, ...)
    +     x$setmean(m)
    +     m
    + }
  > 
    > 
    > ##The function checks whether the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix.