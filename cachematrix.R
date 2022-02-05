
## This pair of functions cache and return the inverse of a matrix.

## Creates special "matrix" object, which is really a list containing four 
## function to:
        ## set the value of the matrix
        ## get the value of the matrix
        ## set the velue of the solve
        ## get the value of the solve


makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list (set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Computes inverse of the special "matrix" returned above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then it retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}

