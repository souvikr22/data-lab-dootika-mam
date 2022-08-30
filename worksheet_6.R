rm(list = ls())
install.packages("tidyverse")
install.packages("rvest")

library(tidyverse)
library(rvest)
html = read_html("https://www.imdb.com/chart/top/")


#movie names
names = html_elements(html , ".titleColumn a")
names = html_text(names)


#movie year of release
year = html_elements(html, ".secondaryInfo")
year = html_text(year)
year = as.numeric(gsub("\\(|\\)", "", year))



#movie rating
rating = html_elements(html, ".ratingColumn strong")
rating = as.numeric( html_text(rating))


#movie no. of votes
votes = html_elements(html, ".ratingColumn strong")
votes = html_attrs(votes)
x = substr(votes ,13 , 23 )
votes = gsub("[^0-9.-]", "", x)


#creating a data frame
data = data.frame(names , year , rating , votes)
data







