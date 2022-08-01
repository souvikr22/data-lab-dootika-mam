#1
number<-as.integer(readline(prompt='enter the number'))
ind<-1
for(i in 2:number)
{
  ind<-i*ind
}
ind
#2
number<-as.integer(readline(prompt='enter your number'))
fx<-function(n)
{
  (1+1/n)^n
}
fx(100000)
#3
data<-read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
data
colnames(data)<-c('roll','seat')
data
index<-which(data$roll==221433)
index
data$seat[index]
#another way for 3
attach(data)
data[roll==221433,2]
#4
getwd()
data<-read.csv('seating.csv')
data
