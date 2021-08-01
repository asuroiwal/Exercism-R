# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  distance=0
  if(nchar(strand1)==nchar(strand2)){
    for(i in 0:nchar(strand1)){
      if(substring(strand1,i,i)!=substring(strand2,i,i)){
        distance = distance + 1
      }
    }  
  } else{
    stop("The two sequences are not equal")
  }
  return (distance)
}
