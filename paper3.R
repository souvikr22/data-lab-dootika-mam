#1

#a

toss <- rbinom ( 1000 , size = 1 , prob = .5)
toss
prop <- sum ( toss == 1) / length ( toss ) #finding proportion of heads
prop

#b

toss <- rbinom ( 1000 , size = 1 , prob = .3)
toss
prop <- sum ( toss == 1 ) / length ( toss )
prop

#2

#a random ball drawing

sample( x= c('red' , 'green' , 'blue'), size = 1 , prob = c(3/7 , 2/7 , 2/7))
 
#b matrix problem

matrix <- matrix(c(3, 1, -2, 4, 5, 3, -1, 2, -2), nrow = 3, ncol = 3)
matrix

norm1 <- norm ( matrix[,1] , type='2')
norm2 <- norm ( matrix[,2] , type='2')
norm3 <- norm ( matrix[,3] , type='2')
#finding probabilities
p1 <- norm1/(norm1 + norm2 + norm3)
p2 <- norm2/(norm1 + norm2 + norm3)
p3 <- norm3/(norm1 + norm2 + norm3)
#generate observation
sample (x = 1:3 , size = 1 , prob = c ( p1 , p2 , p3))

#c dart problem
runif ( n = 1 , min = 0 , max = 5)

#3

#a
sum <- 0
i <- 0
fx <- function(x)
{
  x= while( sum <= 1 )
{
  a <- runif(1 , min = 0 , max = 1)
  sum = sum + a
  i = i + 1
}
i
}
