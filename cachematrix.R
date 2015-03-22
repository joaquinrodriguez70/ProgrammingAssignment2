## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# create a list of functions that 
#a) sets a list of 3 objects ( matrix, inverted and control)
#b) sets a matrix 
#d) gets a matrix 
#e) gets the inverse of a matrix ( if already has calculated the matrix, if not, first inversts the matrix)
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
