library(tidyverse)
danish_monarchs <- read_csv2("data/Danske_monarker.csv")

danish_monarchs %>%
  mutate(name = reorder(name, reign)) %>% 
  ggplot(aes(y= name, x = reign, color = name)) +
  geom_col()


           
         