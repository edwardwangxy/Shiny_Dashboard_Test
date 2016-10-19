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


insertion.sort2 <- function(A){
  for(i in c(2:length(A))){
    j = i
    while(j>1 && A[j-1]>A[j]){
        temp_val <- A[j-1]
        A[j-1] <- A[j]
        A[j]=temp_val
        j = j-1
    }
  }
  return(A)
}

tosort <- c(4,2,5,1,3)
result <- insertion.sort(tosort)
result
insertion.sort(c(1,5,2,7,3,6))
insertion.sort2(c(1,5,2,7,3,6))