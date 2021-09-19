# Load Libraries ----------------------------------------------------------


# Exercises: practice creating and manipulating factors
library(tidyverse)

# OR

library(readr)   # parse_factor() function
library(dplyr)   # for easier subsetting and
                 # data manipulation
library(forcats) # create/mutate factors easier


# Create some data to work with -------------------------------------------


# sample of birth months
month_dat <- c("Jan", "Aug", "Dec", "Mar", "Jun","Jun")

# sample of birth months (represented as integers)
month_dat_int <- c(1, 8, 12, 3, 6, 6)


# Factors -----------------------------------------------------------------


# convert sample into a factor
factor(month_dat)

# specify the months in their proper order manually
month_levels <- c("Jan","Feb","Mar",
                  "Apr","May","Jun",
                  "Jul","Aug","Sep",
                  "Oct","Nov","Dec")

# Convert our sample to a factor (with known levels)
month_dat <- factor(x = month_dat,
                    levels = month_levels)

# display the results to the console so that we can check that it is working the way we expect it to
month_dat

# generate new vector with a typing error
month_dat_typo <- c("Jan","Aug","Jum")

# convert to factor
factor(x = month_dat_typo,
       levels = month_levels)

# To get warnings when R does these conversions use the parse_factor() function from the readr package
month_dat_parsed <- parse_factor(x = month_dat_typo,
                                 levels = month_levels)

month_dat_parsed

# check the levels
levels(month_dat_parsed)


# Combining Factors -------------------------------------------------------


# study 1 only had 2 subjects who identified as male and female
study_1 <- parse_factor(c("male", "female"))

# study 2 only had 2 subjects who identified as female and non-binary
study_2 <- parse_factor(c("female", "non-binary"))

# study 3 only had 1 subject who identified as male
study_3 <- parse_factor(c("male"))

# naive approach, use the combine function
c(study_1, study_2, study_3)

# print the structure of study_1 to the console.
str(study_1)

fct_c(study_1,study_2,study_3)

# Collapse three months onto a new level, "spring"
month_dat_seasons <- fct_collapse(.f = month_dat,
                                  spring = c("Mar","Apr","May"),
                                  summer = c("Jun","Jul","Aut"))

month_df <- data.frame(month = month_dat)

month_df <- month_df %>% 
  mutate(season = fct_collapse(.f = month,
                               spring = c("Mar","Apr","May"),
                               summer = c("Jun","Jul","Aut")),
         month_droped = fct_drop(month))

# Print the result to the console
month_dat_seasons


# Count levels of a factor ------------------------------------------------


# get counts of each birth month
fct_count(month_dat)

# get counts of each birth season
fct_count(month_dat_seasons)

month_dat %>% 
  factor()
factor(month_dat)


# Check the valid levels in the original factor
levels(month_dat)


# Dropping Unused levels of a factor --------------------------------------


# Start with the original factor, and then ...
# drop unused levels, and then ...
# check the valid remaining levels
month_dat %>% 
  fct_drop() %>% 
  levels()
fct_drop(month_dat)


# Recode Levels of a factor -----------------------------------------------


month_dat_full_names <- fct_recode(.f = month_dat,
                                   January = "Jan",
                                   Februrary = "Feb",
                                   March = "Mar",
                                   April = "Apr",
                                   May = "May",
                                   June = "Jun",
                                   July = "Jul",
                                   August = "Aug",
                                   September = "Sep",
                                   October = "Oct",
                                   November = "Nov",
                                   December = "Dec")

# Print to the console
month_dat_full_names

# remove the month of January
fct_recode(month_dat_full_names, NULL = "January")


# Logic examples ----------------------------------------------------------
?Comparison

# Let's start with the mtcars dataset and practice logical expressions
?mtcars
practice_data <- mtcars

# Keep all the cars with mpg less than 20
practice_data %>% 
  filter(mpg < 20) %>% 
  View()

# Keep all the cars with "V-shaped" engines
practice_data %>% 
  filter(vs == 0) %>% 
  View()

# Keep all cars with either 1 or 3 carburetors
# Many ways to do this
practice_data %>% 
  filter(carb == 1 | carb == 3) %>% 
  View()

group_by() %>% 
  summarise()
ungroup()
