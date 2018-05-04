fahrenheit_to_kelvin <- function(temp_F){
  temp_K <- ((temp_K-32)*(5/9))+273.15
  return(temp_K)
}

fahrenheit_to_kelvin(100)

kelvin_to_celsius <- function(temp_K){
  temp_C <- temp_K - 273.15
  return(temp_C)
}

kelvin_to_celsius(0)

fahrenheit_to_celsius <- function(temp_F){
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_C <- kelvin_to_celsius(temp_K)
  return(temp_C)
}

fahrenheit_to_celsius(100)
# quotations for not mistaking it as a variable
sentence <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"
# combine two arguments
fence <- function(sentence, wrapper){
  answer <- c(wrapper, sentence, wrapper)
  return(answer)
}
fence(sentence, asterisk)

center <- function(data, desired){
  new_data <- (data - mean(data)+desired)
  return(new_data)
}
# Mock numbers to test function
z <- c(0,0,0,0)
center(z, 3)
# using data frame to test function
dat <- read.csv(file="inflammation-01.csv", header=FALSE)
centered <- center(dat[,4], 0)
min(dat[,4])
min(centered)
max(dat[,4])
max(centered)
mean(dat[,4])
mean(centered)

sd(dat[,4])
sd(centered)
# Function all to check
all.equal(sd(dat[,4]), sd(centered))

read.csv(file="inflammation-01.csv", header=TRUE)
# would be the same as read.csv("inflammation-01.csv,TRUE), it will still work, but the order is important
# However, if you tell it what it is you can do read.csv(header=TRUE, file="inflammation-01.csv)

# Maked the desired value a default of 0
center <- function(data, desired=0){
  new_data <- (data - mean(data)) + desired
  return(new_data)
}
center(dat[,4])
# If the default is set in the function, you don't need to input any number. However, if the function didn't have a specified default, R expects a value there.
rescale <- function(vector){
  first_step <- (vector)-min(vector)
  second_step <- (first_step)/max(first_step)
  return(second_step)
}
rescale(c(3,2,5,7))