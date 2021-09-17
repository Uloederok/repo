hw 1
================
korede
9/16/2021

## R Markdown

include link to github in html doc do str(data) imake a plot

library(rvest) library(tidyverse)

\#\#Import NBI DATA to
excel-<https://www.fhwa.dot.gov/bridge/nbi/importing.pdf>; then save as
csv bridge = read\_csv(“hawaii bridge.csv”) h\_bridge = select(bridge,
c(‘YEAR\_BUILT\_027’,‘DECK\_COND\_058’,‘STATE\_CODE\_001’,‘STRUCTURE\_NUMBER\_008’,‘DIRECTION\_005E’))

h\_bridge = h\_bridge %\>% rename(year = YEAR\_BUILT\_027,
condition\_rate = DECK\_COND\_058, fipscode = STATE\_CODE\_001,
bridge\_id = STRUCTURE\_NUMBER\_008, direction = DIRECTION\_005E )

str(h\_bridge)

plot = ggplot(data = h\_bridge) + geom\_point(mapping = aes(x = year, y
= direction, color = condition\_rate))

print(plot)

plot()

print(plot) ![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->
