x <- sample(1:100,50)


for (i in length(x):1){
  x.test <- x[1:i]
  if(which.max(x.test) != length(x.test)){
    x.flip <- x[which.max(x.test):1]
    x[1:i] <- rev(c(x.flip,x[(which.max(x.test)+1):length(x.test)]))
  }
  else{
    x[1:i] <- x.test
  }
}
