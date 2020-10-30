library(dplyr)
library(ggplot2)

path <- "/Volumes/some path I regret using later/data"
path2 <- "/Volumes/another example/data"

df <- starwars

df %>% 
  slice_max(height, n = 10) %>% 
  ggplot() +
  geom_col(aes(height, name), alpha = 0.5) +
  theme_minimal() +
  theme(panel.grid.major.y = element_blank())
  

