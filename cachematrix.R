## cachematrix will help to calculate the inverse matrix and also cache the data for next exectuion and it contains two function 
## 1. makeCacheMatrix 2. cacheSolve

## makeCacheMatrix will cache the inverse matrix once it is calculated

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

   m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setMatrixCache <- function(mat) m <<- mat
        getMatrixCache <- function() m
        list(set = set, get = get,
             setMatrixCache = setMatrixCache,
             getMatrixCache = getMatrixCache)

}



## cacheSolve will calculate the inverse matrix and dispaly the result, if it is calculated before it will fetch from the cache which avods re-exectuion



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getMatrixCache()
        if(!is.null(m)) {
                message("getting cached data")
          			print("check")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setMatrixCache(m)
        m
}
