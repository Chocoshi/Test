# pwd path working directory is getwd
getwd()
# cd change directory is setwd, ~/ to get to the directory, can use tab to go through 
setwd("~/Desktop/data")
getwd()
# ls is list
list.files()
read.csv(file = "inflammation-01.csv", header = FALSE)
?read.csv()
# assign variables
3
a <- 3
a+5
a

weight_kg <- 55
weight_kg
weight_kg*2.2
# Overwrite the previous same name
weight_kg <- 57.5
weight_kg

weight_lb <- weight_kg*2.2
# The weight does not change, doesn't do re-calculation and re-assignment unless you run the line again
weight_kg <- 100
weight_lb <- weight_kg*2.2
weight_lb
# dat gets used a lot in R
dat <- read.csv(file = "inflammation-01.csv", header = FALSE)
dat
# head gives first 5 rows
head(dat)
class(dat)
# Dimensions of data frame (x rows y columns)
dim(dat)
# Gives me top left piece of datum
dat[1,1]
dat[30,20]
# Pick multiple rows and multiple columns
c(1,2,3)
dat[c(1,3,5), c(10,20)]
# Want the first 10 rows and first 10 columns using colons
1:5
dat[1:4 , 1:10]
dat[5:12 , 1:10]
# Leave the column specification blank
dat[1,]
dat[,2]
dat[,16:19]
# dat[,] is the same as dat
max(dat[1,])
# pull out the data point easily
patient_1 <- dat[1,]
max(patient_1)
# Minimum inflammation on day 7
min(dat[,7])
# Average inflammtion for day 7
mean(dat[,7])
mean(dat[,7])
median(dat[,7])
sd(dat[,7])
# For the whole dataset to glance through easily, only for each column
summary(dat)
# Apply for more variability, for every row
apply(dat, 1, mean)
# For every column
apply(dat, 2, mean)
# c for combine, a list or a range
a <- c(1,2,3)
a
a*3
# Can use apostrophes or double quotations
animal <- c("m", "o", "n", "k", "e", "y")
animal
animal[4:6]
# Order of these numbers matters
animal[6:4]
animal[-1]
# Each row is a different patient and each column is a different day
head(dat)
apply(dat, 2, mean)
avg_day_inflammation <- apply(dat, 2, mean)
plot(avg_day_inflammation)
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)
sd_day_inflammation <- apply(dat, 2, sd)
plot(sd_day_inflammation)
# Every column in R is the same data type, but a row in a data frame could mean slicing through different data type
class(dat[2,])
class(dat[,2])
