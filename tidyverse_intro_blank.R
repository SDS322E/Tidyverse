## Tidyverse Intro Code File


## Load the tidyverse package


## Load the datasets package


## Print the entire 'airquality' dataset (from the "datasets" package)



## Print out the first few rows of the 'airquality' dataset




## Get more information on the airquality dataset
## ?airquality


## Convert the 'airquality' data frame to a tibble (and save to a different
## object name)



## Print out tibble



## Print out one variable/column (use $ to access one column)



## Print out one variable/column (use $ to access one column)



## Make a summary of the 'Ozone' variable



## Make a summary of the 'Temp' variable


## Compute a single statistic (the median) for Temp


## Compute a single statistic


## Print out Ozone variable (note NA values)



## Check help file for mean
## ?mean


## Remove NA values from data when computing the mean using na.rm argument


## Use tidyverse pipe to compute mean ozone




## Use filter() function to remove NA values




## Filter NA values and then compute the mean





## Compute summary stat for more variables (Ozone, Wind, Temp)







## Bivariate relationships
## Look at relationship between Temp and Wind






## Divide the range of Temp into 2 categories and create new variable 'temp_cat'





## Compute the mean of Wind within each of the 2 Temp categories







## Use 5 categories of Temp







## Compute the mean of Temp within each of the 5 categories of Wind







## Look at Solar.R and Ozone






## Filter out NA values (how many rows in the new data frame?)





## Create 2 categories of Solar.R and save in new variable called 'solar_cat'






## Compute the mean of ozone within each of 2 categories of Solar.R








## Compute the mean of ozone within each of 3 or 5 categories of Solar.R


























