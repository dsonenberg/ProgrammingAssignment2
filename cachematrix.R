## makeCacheMatrix
## Takes a matrix and creates a list of functions to cache the inverse of the 
## input matrix

makeCacheMatrix <- function(x = matrix()) {
        v <- NULL
        set <- function(y) { 
                x <<- y
                v <<- NULL
        }
        
        get <- function() x 
        setinverse <- function(solve) v <<- solve 
        getinverse <- function() v 
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## cacheSolve
## Takes a list created by makeCacheMatrix, computes the inverse of the cache 
## matrix, or simply prints the inverse if it has already been computed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        v <- x$getinverse()
        if(!is.null(v)) {
                message("Retrieving cached data")
                return(v)
        }
        data <- x$get()
        v <- solve(data, ...)
        x$setinverse(v)
        v
}
