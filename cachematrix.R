## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# A function that set the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  
  cachedInvertedMatrix <- NULL
  invertMatrix <- function(x) { 
    cachedInvertedMatrix <<- solve(x)
  }
  list(invertMatrix = invertMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
