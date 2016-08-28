## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Initialize the inverse property
makeInverseMatrix <- function(x = matrix()) {
        ivn <- NULL
        set <- function(y) {
                x <<- y
                ivn <<- NULL
        }
        ## Method the get this matrix
        get <- function() 
        x
        ## Method to gain the inverse of the matrix
        setinversion <- function(inverse) 
                ivn <<- inverse
        ## Method to gain the inverse of the matrix
        getinversion <- function() ivn
        ## Show the methods list
        list(set=set, get=get, 
             setinversion=setinversion, 
             getinversion=getinversion)
}
## Calculate the inverson of  "makeInverseMatrix"
## Back to a matrix  “ivn”, indicating the invision.
cacheinver <- function(x, ...) {
        ivn <- x$getinversion()
        if(!is.null(ivn)) {
                message("getting cached data.")
                return(ivn)
        }
        data <- x$get()
        ivn <- solve(data)
        ## Set the inversion to our aim
        x$setinversion(ivn)
        ## Go back the matrix
        ivn
}

#Would you like to test the results? Just try the code as follows.
#x = rbind(c(1, -1/5), c(-1/5, 1))
#m = makeInverseMatrix(x)
#m$get()

