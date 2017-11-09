cacheSolve<-function(x,...){
        inv<-x$getinv()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mar<-x$get()
        inv<-solve(mar)
        x$setinv(inv)
        inv
}