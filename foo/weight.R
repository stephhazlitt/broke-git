library(dplyr)
library(ggplot2)

path <- "/temp1/data"
path2 <- "/temp2/data"

df <- starwars

df %>% 
  slice_max(mass, n = 10) %>% 
  ggplot() +
  geom_col(aes(mass, name))
  

