library(tidyverse)
data()
data("Orange")

dim(Orange)
head(Orange)
tail(Orange)
is.data.frame(Orange)
plot(Orange$age, Orange$circumference.R)

#Data Quality
cleaned_data <- na.omit(Orange)

# Filter method
filter(Orange, Tree == 1)
filter(Orange, Tree == 2)
filter(Orange, Tree == 3)
filter(Orange, Tree == 4)
filter(Orange, Tree == 5)
filter(Orange, age == 118)
filter(Orange, circumference ==30)


#Arrange method
arrange(Orange, Tree, age, circumference)
arrange(Orange, desc(circumference))
arrange(Orange, desc(age))

#Select method
select(Orange, Tree, age, circumference)
select(Orange, Tree:circumference)

#Group_by
cleaned_data %>% group_by(Tree) %>% summarise( count=n(), avgage = mean(age), avgcircumference = mean(circumference))

#Summarize
summarise(Orange, circumference = mean(circumference, na.rm = TRUE))
summary(Orange)