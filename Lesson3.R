analyze <- function(filename){
  #import this data
  dat <- read.csv(file = filename, header = FALSE)
  # Plot the average, min, and max inflammation over time
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  
  min_day_inflammation <- apply(dat, 2, max)
  plot(min_day_inflammation)
}

getwd()
list.files()
analyze('inflammation-01.csv')
analyze('inflammation-02.csv')

print('text')
a <- 'text'
print(a)

best_practice <- c('Let', 'the', 'computer', 'do', 'the', 'work')
print_words <- function(sentence){
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}
print_words(best_practice)
# NA because sentence doesn't have the 6th word; we deleted it earlier
best_practice[-6]
print_words(best_practice[-6])
# Foreloop
print_words <- function(sentence){
  for(word in sentence){
    print(word)
  }
}
print_words(best_practice)
print_words(best_practice[-6])

len <- 0
vowels <- c('a', 'e', 'i', 'o', 'u')

for (v in vowels){
  len <- len +1
}
len
v

letter <- 'z'
for(letter in c('a', 'b', 'c')){
  print(letter)
}
# over-ride the assignment of letter is z

Vertical_print <- function(seq){
for(number in seq(3)){
  print(number)
}  
}

Vertical_print(10)
