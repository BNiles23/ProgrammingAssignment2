## Put comments here that give an overall description of what your
## functions do

Writing a pair of functions which are "makeCacheMatrix" and "cacheSolve" that cashe the inverse of matrix

## Write a short comment describing this function

The function "makeCacheMatrix" creates a "matrix" object that can cache its inverse for the input 

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
cacheSolve is the function that computes the inverse of "matrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null.(inv)) {
message("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve (mat,...)
x$setInverse(inv)
inv
}
