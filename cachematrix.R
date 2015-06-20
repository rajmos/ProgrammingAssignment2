# makeCacheMatrix is a function that has bunch of functions
# This fucntion creats a martix, set values for matrix and preserves(caches) value of the inverse of the 
# matrix. Contains the following set and get funciton functions:
# setMatrix      set the value of a matrix
# getMatrix      get the value of a matrix
# setCacheInverse   get the cahced value (inverse of the matrix)
# getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(a = numeric()) {
 
        ### initialize inverse cache to NULL
        inverseCache <- NULL
        
        ### store a matrix
        setMatrix <- function(newValue) {
                a <<- newValue
                ### since the matrix is set with new values, initilize the inverse cache
                inverseCache <<- NULL
        }

        ### returns the stored matrix
        getMatrix <- function() {
                a
        }

        ### cache the given argument, solve inverses square matrix 
        setCacheInverse <- function(solve) {
                inverseCache <<- solve
        }

        ### get the inversed cached value
        getInverse <- function() {
                inverseCache
        }
        
        ### return a list of named elements which is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, setCacheInverse = setCacheInverse, getInverse = getInverse)
}

# This  function returns the inverse of a square matrix created with 
# makeCacheMatrix fucntion. If the innvserse is cahched already it returns form cache, else inverses and returns the inverse.
cacheSolve <- function(b, ...) {
        ### retrives the cached value
        inverseMatrix <- b$getInverse()

        ### if a cached value available ( not null ) return it
        if(!is.null(inverseMatrix )) {
                message("cached value available and hence getting cached data")
                return(inverseMatrix )
        }

        ### else get the matrix, calulate the inverse and set it in the cache
        
        data <- b$getMatrix()
        inverseMatrix <- solve(data)
        b$setCacheInverse(inverseMatrix )
        
        ### return the inverse of the matrix

        inverseMatrix 
}

