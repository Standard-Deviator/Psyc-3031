library(tidyverse)

starwars %>% 
  ggplot(aes(x = mass, y = height)) + 
  geom_point() 

starwars %>% 
  ggplot(aes(x = mass, y = height)) + 
  geom_point() +
  labs(x = expression(paste(italic("hello"),"\n good bye")))
View(mtcars)

pivot_longer(data = data, names_to = "depression",values_to = )