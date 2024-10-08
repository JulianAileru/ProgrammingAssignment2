## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# set the value of the matrix 
# get the value of the matrix 
#ser the value of the inverse matrix 
# get the value of the invers matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){ 
                x <<- y
                m <<- NULL
        }
        get <- function() x

        setinverse <- function(inverse){
                 m <<- inverse
        } 
        getinverse <- function() m 
        list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}


