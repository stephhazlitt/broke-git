library(dplyr)
library(ggplot2)

path <- "/secret1/data"

df <- starwars

df %>% 
  slice_max(height, n = 10) %>% 
  ggplot() +
  geom_col(aes(height, name))
  

