makeCacheMatrix <- function(x = numeric()) {
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