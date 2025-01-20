## Tidyverse Intro Code File


## Load the tidyverse package
library(tidyverse)

## Load the datasets package
library(datasets)

## Print the entire 'airquality' dataset (from the "datasets" package)
airquality


## Print out the first few rows of the 'airquality' dataset
airquality |> 
    head()


## Get more information on the airquality dataset
## ?airquality


## Convert the 'airquality' data frame to a tibble (and save to a different
## object name)
dat <- as_tibble(airquality)


## Print out tibble
dat


## Print out one variable/column (use $ to access one column)
dat$Ozone


## Print out one variable/column (use $ to access one column)
dat$Wind


## Make a summary of the 'Ozone' variable
summary(dat$Ozone)


## Make a summary of the 'Temp' variable
summary(dat$Temp)

## Compute a single statistic (the median) for Temp
median(dat$Temp)

## Compute a single statistic
mean(dat$Ozone)

## Print out Ozone variable (note NA values)
dat$Ozone


## Check help file for mean
## ?mean


## Remove NA values from data when computing the mean using na.rm argument
mean(dat$Ozone, na.rm = TRUE)

## Use tidyverse pipe to compute mean ozone
dat |> 
    summarize(ozone = mean(Ozone))


## Use filter() function to remove NA values
dat |> 
    filter(!is.na(Ozone)) 


## Filter NA values and then compute the mean
dat |> 
    filter(!is.na(Ozone)) |> 
    summarize(ozone = mean(Ozone))


## Compute summary stat for more variables (Ozone, Wind, Temp)
dat |> 
    filter(!is.na(Ozone)) |> 
    summarize(ozone = mean(Ozone),
              wind = mean(Wind),
              temp = mean(Temp))


## Bivariate relationships
## Look at relationship between Temp and Wind
dat |> 
    select(Temp, Wind)

summary(dat$Temp)
summary(dat$Wind)

## Divide the range of Temp into 2 categories and create new variable 'temp_cat'
dat |> 
    select(Temp, Wind) |> 
    mutate(temp_cat = cut_number(Temp, 2))


## Compute the mean of Wind within each of the 2 Temp categories
dat |> 
    select(Temp, Wind) |> 
    mutate(temp_cat = cut_number(Temp, 2)) |> 
    group_by(temp_cat) |> 
    summarize(wind = mean(Wind))


## Use 5 categories of Temp
dat |> 
    select(Temp, Wind) |> 
    mutate(temp_cat = cut_number(Temp, 5)) |> 
    group_by(temp_cat) |> 
    summarize(wind = mean(Wind))


## Compute the mean of Temp within each of the 5 categories of Wind
dat |> 
    select(Temp, Wind) |> 
    mutate(wind_cat = cut_number(Wind, 5)) |> 
    group_by(wind_cat) |> 
    summarize(temp = mean(Temp))


## Look at Solar.R and Ozone
dat |> 
    select(Solar.R, Ozone)

summary(dat$Solar.R)


## Filter out NA values (how many rows in the new data frame?)
dat |> 
    select(Solar.R, Ozone) |> 
    filter(!is.na(Solar.R) & !is.na(Ozone))


## Create 2 categories of Solar.R and save in new variable called 'solar_cat'
dat |> 
    select(Solar.R, Ozone) |> 
    filter(!is.na(Solar.R) & !is.na(Ozone)) |> 
    mutate(solar_cat = cut_number(Solar.R, 2))


## Compute the mean of ozone within each of 2 categories of Solar.R
dat |> 
    select(Solar.R, Ozone) |> 
    filter(!is.na(Solar.R), !is.na(Ozone)) |> 
    mutate(solar_cat = cut_number(Solar.R, 2)) |> 
    group_by(solar_cat) |> 
    summarize(ozone = mean(Ozone))


## Compute the mean of ozone within each of 3 or 5 categories of Solar.R


























