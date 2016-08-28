## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeInverseMatrix <- function(x = matrix()) {
        ivn <- NULL
        set <- function(y) {
                x <<- y
                ivn <<- NULL
        }
        get <- function() 
        x
        setinversion <- function(inverse) 
                ivn <<- inverse
        getinversion <- function() ivn
        list(set=set, get=get, 
             setinversion=setinversion, 
             getinversion=getinversion)
}

cacheinver <- function(x, ...) {
        ivn <- x$getinversion()
        if(!is.null(ivn)) {
                message("getting cached data.")
                return(ivn)
        }
        data <- x$get()
        ivn <- solve(data)
        x$setinversion(ivn)
        ivn
}

#test to run
#x = rbind(c(1, -1/5), c(-1/5, 1))
#m = makeInverseMatrix(x)
#m$get()
