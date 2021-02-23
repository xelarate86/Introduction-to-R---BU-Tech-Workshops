# Introduction to R - Part 1 (2/19/2021) with Aidan Chaffin
# Uses an instructor-provided dataset on the DC version of bluebikes!
  # We're mainly worknig with


# Printing hello world
print("Hello world!")

# Assigning variables
x <- 3
y <- 6

# Use "combine" function c() to combine numbers into a vector/matrix
x <- c(4, 5, 2, 6,4, 3, 4.4)

# Print working directory 
getwd()

# Change working directory
setwd("C:/Users/80h86/Desktop/BU Introduction to R/")

# Check that we've changed the working directory
getwd()

# Summarize statistics of the x matrix
summary(x)

# Importing day.csv as "data"
data <- read.csv("day.csv")

# Summarizing statistics of 'Data' (day.csv)
summary(data)

# Assigning column in data table to variable
  # dataset$(COLUMN HERE) - $ means look inside
a <- data$windspeed

### Basic math testing
3 + 6
x + y # Adding x to y - adds x value to all in y
x - y
x * y # Multiplies every y by x
y / x
x ^ y # Can also be x ** y
sqrt(x)
# Modulo
6 %% 3 # How much do I have remaining after 6/3
6 %% 4


### Manipulating columns of dataset

# Mean windspeed
mean(a)

# Sum windspeed
sum(a)

# Standard deviation of windspeed
sd(a)

# Variance of windspeed
var(a)  # (same as sd(a)^2)
sd(a)^2

# Summarize windspeed
summary(a)

# Take a look at first (or last) lines of set
head(tempx)
tail(tempx)

# Summarize any selected column
summary(data$temp)

# Calculate percent different from mean of temp in day 45
((mean(data$temp) / data$temp[45]) - 1) * 100


### PLOTTING

# Plotting temperature per month
plot(data$mnth, data$temp)

# Assigning temp and count to variables and plotting them
tempx <- data$temp
cnty <- data$cnt
plot(tempx, cnty)


# Plotting again, with labeled axes!
plot(tempx, cnty, xlab = "Temperature", ylab = "Count", main= "People by Temperature")
  # Main = "TITLE HERE"

# Plotting a histogram with custom amount of breaks
hist(cnty, breaks = 7, xlab = "Temperature", ylab = "Count", main= "People by Temperature")
  # Breaks = "NUMBER OF BUCKETS HERE"



## CREATING MODELS

# Creating linear fit model (predicting count given temp)
mod <- lm(cnty ~ tempx)
  # Model = linear model of (count given temp)
# Summarizing our model
summary(mod)

# Analysis of variance test of our model
anova(mod)

# Get covariance of our models
cov(tempx, cnty)

## Class concluded