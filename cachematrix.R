## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	inverse = NULL
	get <- function() x
	set <- function(new) {
		x<<-new
		inverse <<- NULL
	}
	getInverse <- function() inverse
	setInverse <- function(newInverse) inverse <<- newInverse
	list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)


}


## check for cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inverse <- x$getInverse()
	if(!is.null(inverse)) {
		returm(m)
	}
	data = x$get()
	inverse <- solve(data)
	x$setInverse(inverse)
	inverse


}
