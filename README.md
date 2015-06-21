## Week3: Programming Assignment 2: Lexical Scoping

## Coursera - R Programming

Please follow the set of instructions to test this assignment
Remeber the solve function will work for only square matrix which is 
reversible



#1) Load the R files

source("c:/directory/path/you/downloaded/cachematrix.R") 



#2) call makeCacheMatrix to create the matrix


a <- makeCacheMatrix( matrix(c(1,2,3,4), nrow = 2, ncol = 2) )

#3) execute summary(a)

summary(a);
                Length Class  Mode    
#> setMatrix       1      -none- function
#> getMatrix       1      -none- function
#> setCacheInverse 1      -none- function
#> getInverse      1      -none- function


#4)  print the matrix

a$getMatrix();

      [,1] [,2]
#> [1,]    1    3
#> [2,]    2    4

#5) Cache the inverse

cacheSolve(a)
#>      [,1] [,2]
#> [1,]   -2  1.5
#> [2,]    1 -0.5


#6) reexecute cacheSolve(a),  note the printed message proves the value is
returned from previously cached value

cacheSolve(a)

#>  cached value available and hence getting cached data
#>      [,1] [,2]
#> [1,]   -2  1.5
#> [2,]    1 -0.5


#7) You can try for 3x3 square matrix as well

a <- makeCacheMatrix( matrix(c(2,2,2,1,0,0,0,0,1), nrow = 3, ncol = 3) );

summary(a);

                Length Class  Mode    
#> setMatrix       1      -none- function
#> getMatrix       1      -none- function
#> setCacheInverse 1      -none- function
#> getInverse      1      -none- function

a$getMatrix();

#>      [,1] [,2] [,3]
#> [1,]    2    1    0
#> [2,]    2    0    0
#> [3,]    2    0    1

cacheSolve(a)

#>      [,1] [,2] [,3]
#> [1,]    0  0.5    0
#> [2,]    1 -1.0    0
#> [3,]    0 -1.0    1

cacheSolve(a)

#>  cached value available and hence getting cached data
#>      [,1] [,2] [,3]
#> [1,]    0  0.5    0
#> [2,]    1 -1.0    0
#> [3,]    0 -1.0    1


