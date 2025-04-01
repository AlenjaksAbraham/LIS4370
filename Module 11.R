tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x)){
    
    outliers[,j] <- tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i,]) 
  } 
  
  return(outlier.vec)
  
}





dummy_matrix <- matrix(c(48, 33, 37, 56, 12, 94, 84, 55, 46, 56, 19, 77, 
15, 83, 62, 16, 99, 11, 69, 87), 
nrow = 5, ncol = 4, byrow = TRUE)






tukey_multiple(dummy_matrix)







tukey.outlier <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  

  return(x < lower_bound | x > upper_bound)
}






tukey_multiple(dummy_matrix)







