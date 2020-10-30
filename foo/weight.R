library(dplyr)
library(ggplot2)

path <- "/Volumes/some path I regret using later/data"
path2 <- "/Volumes/another example/data"

df <- starwars

df %>% 
  slice_max(mass, n = 10) %>% 
  ggplot() +
  geom_col(aes(mass, name))
  

