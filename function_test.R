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

result <- insertion.sort(tosort)
tosort <- c(4,2,5,1,3)
length(tosort)
insertion.sort(tosort)
tosort[0]
tosort
rosort[1]
tosort[1]
for(i in c(2:length(tosort))){
  for(j in c(i:2)){
    if(tosort[j-1]>tosort[j]){
      temp_val <- tosort[j]
      tosort[j] <- tosort[j-1]
      tosort[j-1]=temp_val
    }
  }
}
