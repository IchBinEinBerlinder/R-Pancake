pancake <- function(x){
  for (i in length(x):1){
    x_test <- x[1:i]
    if(which.max(x_test) != length(x_test)){
      x_flip <- x[which.max(x_test):1]
      x[1:i] <- rev(c(x_flip,x[(which.max(x_test)+1):length(x_test)]))
    }
    else{
      x[1:i] <- x_test
    }
  }
  return(x)
}

x <- sample(1:100,50)
pancake(x)
