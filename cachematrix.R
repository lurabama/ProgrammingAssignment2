## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix reads a matrix as input and returns a list with functions
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setmatrix <- function(y){
    y <<- x
    inv <<- NULL
  }
  
  getmatrix <- function(){x}
  setinverse <- function(value) {inv<<-value}
  getinverse <- function() {inv}
  list(setmatrix=setmatrix,getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse)
  
}

## Write a short comment describing this function
## CacheSolve is a function that receives a list and calculates the inverse of the Matrix

cacheSolve <- function(x,...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)){    
      message("inverse has been already calculated")
      matrix <- x$getmatrix()
      return(matrix)
      #verifies if there is a previous value or not, if yes, returns the same value
    }
  matrix <- x$getmatrix()
  inverse <- solve(matrix,...)
  x$setinverse(inverse)
  inverse
  #calculates the inverse, and returns it. Updates the values with the setinverse function
  }



  ## Return a matrix that is the inverse of 'x'

5

