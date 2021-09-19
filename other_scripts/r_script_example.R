# load libraries ----
library(tidyverse)

# get data available from the ggplot2 package ----
data <- starwars

# take a peak at the variables in this dataset ----
glimpse(starwars)

# create a scatterplot of mass height ----
data %>% 
  ggplot(aes(y = height, x = mass)) +
  geom_point()