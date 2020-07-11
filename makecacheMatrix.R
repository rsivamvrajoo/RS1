makeCacheMatrix:                                                                 ## This function creates a special"matrix" object that can cache its inverse. 

makeCacheMatrix <- function (x = matrix ())                                      ## For this assignment, assume that the matrix supplied is always invertible                      
  inv <- NULL                                                                    ## initialize inv; will hold value matrix inverse                              
  set<-function (y) {                                                            ## define set function to assign new
         x <<-y                                                                  ## value of matrix is in parent environment
        inv <<-NULL                                                              ##  if new matrix, reset 
   }
get <- function ()   x                                                          
## define the get function - returns value of the matrix argument
         setInverse<-function (Inverse)inv { inv <<- inverse }                   ## assign value of inv in parent
         getInverse <- function ()  {inv}                                        ## get the value from inv when called 
list (set = set, get = get , setInverse = setInverse , getInverse = getInverse)  ## need this for reference
                                                                                 



cacheSolve <- function(x, ...){                                                  ## the cacheSolve should retrieve the inverse from the cache.Return a matrix that is inverse of x
  inv <-x$getInverse ()                                                          ## function with $ operator
  if(!is.null (inv ))   {
    message ("getting cached data")
    return (inv)
      }
mat<-x$get()
inv<- solve (mat,...)
x$setInverse (inv)
inv
}

