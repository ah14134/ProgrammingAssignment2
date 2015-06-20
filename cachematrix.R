## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function is to prepare a cache in the environment
## the cache will contain the inverse of the matirx

makeCacheMatrix <- function(x = matrix()) {
        mycache <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(c) mycache <<- c
        getinverse <- function() mycache
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
##
##  This function is to get the inverse of the matrix
##  If there is a cached version of inversed matrix, return it
##  otherwise this function calls solve() to invert the matrix, 
##  set it back to the cache, and return.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inversed_matrix <- x$getinverse()
        if(!is.null(inversed_matrix)) {
                message("getting cached inversed matrix")
                return(inversed_matrix)
        }
        my_matrix <- x$get()
        inversed_matrix <- solve(my_matrix)
        x$setinverse(inversed_matrix)
        inversed_matrix
        
}
