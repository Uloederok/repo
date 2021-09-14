library(tidyverse)
library(readr)


daat <- read_csv("http://pages.stat.wisc.edu/~karlrohe/ds479/data/badRead.csv")

str(daat)
### calculates n/a values####
sum(is.na(daat))


