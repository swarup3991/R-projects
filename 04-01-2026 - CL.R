# writing sipmle syntax

### type of data in R
# first data type in R, integer
age <- 22L
str(age) # it will print the structure of data
# second data type in R, numeric, it is decimal or float
income <- 100
str(income)
# third data type in R, character or object
name <- 'x'
str(name)
# fourth data type in R, logical or boolean
status <- TRUE
str(status)

age <- c(22L, 23L, 24L, 25L, 26L) #concatenated
age
str(age)
income <- c(100, 200, 300, 400, 500)
str(income)
names <- c('x', 'o', 'm', 'n', 'p')
str(names)
status <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
str(status)


data <- data.frame(names,age, income, status)
str(data)
summary(data)


data$age
data$income
summary(data$income)
summary(data$status)
barplot(data$status)
hist(data$income)

###create a data 'data1', with 4 columns with 10 elemnets, such as 
# gender(character), age(int), amount(num), frequency(int), payment_status (logical)

gender <- c('male', 'female', 'male', 'male', 'female', 'female', 'male', 'female', 'male', 'female')
str(gender)
age <- c(22L, 23L, 24L, 25L, 26L, 27L, 28L, 29L, 30L, 31L)
str(age)
amount <- c(100, 200, 300, 400, 500, 600, 700, 850, 800, 900)
str(amount)
frequency <- c(1L,2L,3L,5L,4L,2L,6L,7L,9L,8L)
str(frequency)
payment_status <- c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE)
str(payment_status)


data1 <- data.frame(gender, age, amount , frequency, payment_sta1.cstus)

#view the data
data1

write.csv(data1, 'newdata1.csv')
getwd()


data2 <- read.csv('newdata1.csv')
write_xlsx(data1,'newdata1.xlsx')

data3 <-read_excel('newdata1.xlsx')



