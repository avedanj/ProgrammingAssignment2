## Put comments here that give an overall description of what your
## functions do

## Write a short coment describing this function
#Creates a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  a <- NULL                               
  set <- function(y) {                    
    x <<- y                           
    a <<- NULL                        
    
    
  } 
  # the get function  returns value of the matrix argument 
  get <- function() 
    x                  
  # Set the inverse of the matrix  
  setinverse <- function(inverse) 
    a<<- inverse   
  # Get the inverse of the function 
  getinverse <- function() 
    a                    
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)    
  
} 

## Write a short comment describing this function
#compute the inverse of the inverse only if it hasn't been calculated  if calculated
#the fuction will retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
  a <- x$getinverse() 
  if(!is.null(a)) { 
    message("getting cached data") 
    return(a) 
    
  } 
  # Get the matrix of our object   
  data <- x$get() 
  a <- solve(data, ...) 
  x$setinverse(a) 
  # Returns matrix    
  a 
}        ## Return a matrix that is the inverse of 'x'

