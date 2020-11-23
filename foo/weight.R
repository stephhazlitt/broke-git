library(dplyr)
library(ggplot2)

path <- "/some path I regret using later/data"
path2 <- "/secret2/data"

df <- starwars

df %>% 
  slice_max(mass, n = 10) %>% 
  ggplot() +
  geom_col(aes(mass, name))
  

