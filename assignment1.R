i <- 0
count1 <- 0
count2 <- 0
tennis <- function(p)
{
while (count1 < 3 & count2 < 3)
{
  a <- rbinom(1,1,p)
  i <- i + 1
  if(a == 0)
  {
    count1 = count1 + 1
  }
  else
  {
    count2 = count2 + 1
  }
 
}
  return(i) 
}  
tennis(.5)
array <- numeric(length = 1000)
for( j in 1:1000)
{
  array[j] <- tennis(.7)
}
array
mean(array)
