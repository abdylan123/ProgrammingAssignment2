## [Put comments here that describe what your functions do]

makeCacheMatrix <- function(x = matrix()) {
  Inverse<-NULL
  set <-function(y)
  {
    x<<-y
    Inverse<<-NULL
  }
  get = function() x
  setInverse = function(Inv) Inverse<<-Inv
  getInverse = function() Inverse
  
  list(set=set, get=get, setInv=setInverse, getInv=getInverse)
}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv=x$getInv()
    if (!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
  matrix = x$get()
  inv = solve(matrix)
  x$setInv(inv)
  inv
  
}
