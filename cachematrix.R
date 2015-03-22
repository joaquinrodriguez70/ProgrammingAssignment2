## A pair of functions that cache inverted matrices
## cacheMatrix is a vector of functions
## cacheSolve is a cached Matrix inversion, that uses "solve"

## Usage example
## myMatrix <- matrix (c(1,0,0,0,2,0,0,0,3) ,nrow=3, ncol=3)
## cacheMatrix=makeCacheMatrix(myMatrix)
## cacheSolve(cacheMatrix)

# makeCacheMatrix
# Creates an object that holds an inverted matrix. 
# The object returned contains a list of functions that 
#
#a) sets a matrix  (set)
#c) gets a matrix  (get)
#d) gets the inverse of a matrix (getInverted)
#e) sets the inverse of a matrix (setInverted)


makeCacheMatrix <- function(x = matrix()) {
  
  cacheInvertedMatrix <- NULL
  
  #set the matrix object
  set <- function (y) {
     x <<- y
     cacheInvertedMatrix <<- NULL
  }
  
  
  #get the matrix object
  get <- function() {
    x
  }
  
  # Invert a matrix
  getInverted <- function() { 

    cacheInvertedMatrix
  }#getinverted
  
  setInverted <- function(invertedM) {
    cacheInvertedMatrix <<-invertedM
  }
  list(set = set, get= get,setInverted = setInverted, getInverted = getInverted)
  
}

#cacheSolve
#Receive a vector of functions (from makeCacheMatrix)
#When called calculate the inverse of a matrix
#The inverted matrix is calculated only once

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  invMtrx <- x$getInverted()
 
  if ( !is.null(invMtrx) )  {  # calculate the inverse if has not been already calculated 
      print ("getting cached values ...")
      return(invMtrx)
    } #if
  data <-x$get()
  invMtrx <- solve(data,...)
  x$setInverted(invMtrx)
  invMtrx
  
}
