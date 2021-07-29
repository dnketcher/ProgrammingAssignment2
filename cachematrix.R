## Put comments here that give an overall description of what your
## functions do

## Using the makeVector example as a template but instead
## of creating a list to set and get the value of a vector
## and set and get the value of the mean
## we are creating a list to set and get a matrix
## and set and get the inverse of that matrix
## x is assumed to be a square invertible matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
}
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Similar to above, this uses the example of the cachemean 
## as a template to retun an inverse of the original matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
## Check to see if the inverse has already been calculated
## and skip the calc if it has      
        if(!is.null(m) {
                message("getting cached data")
                return(m)
        }
## If it hasn't been calculated then proceed to calculate the
## inverse and set the value.           
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m           
}
