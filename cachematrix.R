## This are a pair of functions that cache matrices and their inverted ones
## makeCacheMatrix creates an cached object

## Creates an object that hols matrices and the inverted matrix. The inverted matrix is calculated only once
# The object returned create a list of functions that 
#
#a) sets a matrix 
#c) gets a matrix 
#d) gets the inverse of a matrix ( if already has calculated the matrix, if not, first inversts the matrix)

#For example
#myMatrix <- matrix (c(1,0,0,0,2,0,0,0,3) ,nrow=3, ncol=3)
#myCalculation <-makeCacheMatrix(myMatrix)
#myCalculation$get()
#myCalculation$getInverted()

makeCacheMatrix <- function(x = matrix()) {
  
  cachedInvertedMatrix <- NULL
  
  #set the matrix object
  set <- function (y) {
    if (attributes(y)$dim[1] != attributes(y)$dim[2])  {
      print ("Warning: Matrix is not squared!, can't be inverted")
    }    
    x <<- y
    cachedInvertedMatrix <- NULL
    
  }
  #get the matrix object
  get <- function() {
    x
  }#get
  
  # Invert a matrix
  getInverted <- function() { 

  # if is not a square Matrix, show an error
  if (attributes(x)$dim[1] != attributes(x)$dim[2])  {
      print ("Warning: Matrix is not squared!, can't be inverted")
  } else {  
      if ( is.null(cachedInvertedMatrix) )  {  # calculate the inverse if has not been already calculated 
        
        print ("calculating ...")
        cachedInvertedMatrix <<- solve(x)
      
        } #if
    
      }#else
    # return the (now) cached matrix
    cachedInvertedMatrix 
  }#getinverted
  
  list(set = set, get= get, getInverted = getInverted)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
