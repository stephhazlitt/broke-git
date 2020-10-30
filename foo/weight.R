library(dplyr)
library(ggplot2)

path <- "/Volumes/some path I regret using later/data"

df <- starwars

df %>% 
  slice_max(mass, n = 10) %>% 
  ggplot() +
  geom_col(aes(mass, name))
  

