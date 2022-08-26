##################### Worksheet 6 ######################
install.packages('tidyverse')
library(tidyverse)
library(rvest)
html <- read_html('https://www.iitk.ac.in/math/faculty')
names <- html_elements(html , '.head3')
names <- html_elements(names , 'a')
names <- html_text(names)


########################### 1 ##############################
html <- read_html('https://www.iitk.ac.in/math/visitors-post-doctoral-fellow')
names <- html_elements(html , '.head2')
names <- html_text(names)


########################### 2 ##############################
html <- read_html("https://www.imdb.com/chart/top/")
names <- html_elements(html , '.titleColumn a')
#names <- html_elements(names , 'a')
names <- html_text(names)
 
########################## 3 ###############################
###################### year ################################
year <- html_elements(html , 'span.secondaryInfo')
year <- html_text(year)
year <- as.numeric(gsub('[^0-9.-]' , '' , year))       #'[^0-9.-]' has to use to remove all the non numerical quantity

######################## rating ############################
rating <- html_elements(html , '.ratingColumn strong')
rating <- html_text(rating)
rating <- as.numeric(rating)

######################## votes #############################
votes <- html_elements(html , '.ratingColumn strong')
votes <- html_attrs(votes)
votes <- substr(votes , 13 , 25)
votes <- gsub('[^0-9.-]','', votes)

######################## creation of data frame ############
data.frame(names , year , rating , votes)
