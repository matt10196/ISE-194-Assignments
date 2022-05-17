#R Analysis
---
#R script by Matthew Borja

#Installation
install.packages("tidyverse")
install.packages("ggplot2")
data <- file.choose("crashdata2011-2020")
data <-read.csv("C:/Users/camel/ISE 194 Assignments/crashdata2011-2020.csv",header=TRUE, stringsAsFactors=FALSE)

#Data is from the url: https://data.sanjoseca.gov/dataset/918fb7f0-60c0-484e-b31c-334d1ec74e92/resource/c19a01f2-33e1-4c66-9498-85d489f90da4/download/crashdata2011-2020.csv

#Observe Data
str(data)
indata <- data
print(indata)
dim(indata)
head(indata)
tail(indata)
summary(indata)
find_mode <- function(x) {
  f <- unique(x)
  tab <- tabulate(match(x,f))
  f[tab == max(tab)]
}
find_mode(indata$FatalInjuries)
find_mode(indata$SevereInjuries)
find_mode(indata$ModerateInjuries)
find_mode(indata$MinorInjuries)

sd(indata$FatalInjuries)
sd(indata$SevereInjuries)
sd(indata$ModerateInjuries)
sd(indata$MinorInjuries)

var(indata$FatalInjuries)
var(indata$SevereInjuries)
var(indata$ModerateInjuries)
var(indata$MinorInjuries)

range(indata$FatalInjuries)
range(indata$SevereInjuries)
range(indata$ModerateInjuries)
range(indata$MinorInjuries)

##Description of Data
#25 variables and 56044 observations
#almost no concrete numeric variables besides the 4 injuries from minor to fatal. So 21 categorical and 4 numeric variables
# Median and mode: 0 for all 4 injury categories
#Mean: 0.3894 for minor injuries, 0.1427 moderate, 0.03137 severe, 0.008244 for fatal
#Standard dev: 0.0941 fatal, 0.1895 severe, 0.395495 moderate, 0.69657 minor
#Variance: 0.00885 fatal, 0.035916 severe, 0.1564163 moderate, 0.4852147 minor
#Range: 0-3 fatal, 0-5 severe, 0-10 moderate, 0-8 minor
#no missing values or duplicate rows
#What I found interesting about the data was that the highest range was the moderate injuries. I thought that the severe injuries would be the most common due to how dangerous car crashes are.

##Visualization
plot(indata$ModerateInjuries, indata$MinorInjuries)
plot(indata$FatalInjuries, indata$SevereInjuries)
hist(indata$FatalInjuries)
hist(indata$SevereInjuries)
hist(indata$ModerateInjuries)
hist(indata$MinorInjuries)
#Minor injuries have the most evenly distributed bars out of all the injuries.
#What is prevalent in all of them is that they all have a high frequency of 0, meaning that the injuries may not be too common during a car crash and can depend on how severe the impact is.

##Hypothesis: difference in means for minor and moderate is 0
t.test(indata$ModerateInjuries, indata$MinorInjuries)
#Since the p-value is less than 0.05, we reject the null hypothesis and the difference in minor and moderate injuries' means is not 0.
