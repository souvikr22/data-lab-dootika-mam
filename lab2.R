#1

seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
colnames(seat) <- c('roll','seat')
sum(seat$roll > 220000)

#2

cricket <- read.csv("https://dvats.github.io/assets/course/mth208/battingbowling.csv")
cricket
colnames(cricket) <- c('' , 'batting' , 'bowling' , 'team')
cricket

##subpart_1

allrounder <- subset ( cricket , batting > 25 & bowling < 40 )
allrounder
colnames ( allrounder ) 

##subpart_2,3

teams <- allrounder $ team
teams

table (teams)  #table function is used for frequency distribution

#3

x= seq ( 0 , 10 , 2)
plot( x , y=x , type = 'l' ,col = "red" , xlab = 'x' , ylab = 'y')

#4

n <- rep ( 1: 1000 )
plot ( n , (1+1/n)^n , type = 'l')
abline ( h = exp(1) , col = 'red' )
