library(dplyr)
library(ggplot2)

path <- "/secret1/data"

df <- starwars

df %>% 
  slice_max(mass, n = 10) %>% 
  ggplot() +
  geom_col(aes(mass, name))
  

