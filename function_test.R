insertion.sort <- function(A){
  for(i in c(2:length(A))){
    for(j in c(i:2)){
      if(A[j-1]>A[j]){
        temp_val <- A[j-1]
        A[j-1] <- A[j]
        A[j]=temp_val
      }
    }
  }
  return(A)
}


tosort <- c(4,2,5,1,3)
result <- insertion.sort(tosort)
result
