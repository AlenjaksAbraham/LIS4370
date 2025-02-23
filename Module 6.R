
#Question 1 parts a and b
A=matrix(c(2,0,1,3), ncol=2) 
A

B=matrix(c(5,2,4,-1), ncol=2)
B

A + B

A - B   


#Question 2 
diag(c(4,1,2,3))

#Question 3 
matrix <- diag(3,5,5)
col1 <- c(3,2,2,2,2)
row1 <- c(3,1,1,1,1)

matrix[,1] <- col1
matrix[1,] <- row1

matrix
