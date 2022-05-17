#Exploratory Data Analysis on Gun Background Checks

data <- file.choose("C:/Users/camel/ISE 194 Assignments/nics-firearm-background-checks/data/Exploratory Data Analysis For Background checks data.csv")
data <-read.csv("C:/Users/camel/ISE 194 Assignments/nics-firearm-background-checks/data/Exploratory Data Analysis For Background checks data.csv",header=TRUE, stringsAsFactors=FALSE)
install.packages("tidyverse")
install.packages("ggplot2")

library(tidyverse)
library("ggplot2")

str(data)
indata <- data
print(indata)
cleaned_data <- na.omit(indata)
dim(cleaned_data)
head(cleaned_data)
tail(cleaned_data)

ggplot(data = cleaned_data) + geom_histogram(mapping = aes(x = handgun), binwidth = 5000)
ggplot(data = cleaned_data) + geom_histogram(mapping = aes(x = handgun), binwidth = 10000)
ggplot(data = cleaned_data) + geom_histogram(mapping = aes(x = handgun), binwidth = 50000)



#Questions
#Which state consistently had the most permits according to the FBI NICS background checks?
#What outliers are in the handgun data?
#Which amount of handguns has the highest count?

#Answers
#Illinois and Kentucky
#>100k handguns
#0 to roughly 12,500 handguns


#Insight
#This data is from 1998-2022 on the amount of guns that either have permits or otherwise according to the FBI NICS. 
#According to the cleaned data the states Illinois and Kentucky consistently had the most permits, and the handguns with outliers were in Texas and Florida. 