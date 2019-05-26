cacheSolve <- function(x, ...)
{
  i <- x$getinverse()
  if(!is.null(i))
  {
    message("getting chached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}