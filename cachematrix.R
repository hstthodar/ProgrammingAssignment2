##Functions to find the Inverse of the Matrix.

#makeCacheMatrix is used to create the matrix Object with Matrix Inverse getter and setter functions
makeCacheMatrix <- function(x = matrix()) {
    matrixInv <- NULL
    set <- function(y) {
        x <<- y
        matrixInv <<- NULL
    }
    get <- function() x
    setInvn <- function(inv) matrixInv <<- inv
    getInvn <- function() matrixInv
    list(set = set, get = get,
         setInvn = setInvn,
         getInvn = getInvn)
}


#cacheSolve is used to find the Matrix Inverse using the Cached content.
cacheSolve <- function(x, ...) {
    inv <- x$getInvn()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    inv <- x$get()
    inv <- solve(data, ...)
	#Setting the cache.
    x$setInvn(inv)
    inv
}
