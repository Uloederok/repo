hw 1
================
korede
9/16/2021

## R Markdown

include link to github in html doc do str(data) imake a plot

hist(rnorm(10))

\#\#\#starting here library(rvest) library(tidyverse)

\#\#Import NBI DATA to
excel-<https://www.fhwa.dot.gov/bridge/nbi/importing.pdf>; then save as
csv

bridge = read\_csv(“hawaii bridge.csv”)

h\_bridge = select(bridge,
c(‘YEAR\_BUILT\_027’,‘DECK\_COND\_058’,‘STATE\_CODE\_001’,‘STRUCTURE\_NUMBER\_008’,‘DIRECTION\_005E’))

h\_bridge = h\_bridge %\>% rename(year = YEAR\_BUILT\_027,
condition\_rate = DECK\_COND\_058, fipscode = STATE\_CODE\_001,
bridge\_id = STRUCTURE\_NUMBER\_008, direction = DIRECTION\_005E )

str(h\_bridge)

plot = ggplot(data = h\_bridge) + geom\_point(mapping = aes(x = year, y
= direction, color = condition\_rate))

print(plot)

plot()

This is an R Markdown document. Markdown is a simple formatting syntax
for authoring HTML, PDF, and MS Word documents. For more details on
using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that
includes both content as well as the output of any embedded R code
chunks within the document. You can embed an R code chunk like this:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

``` r
print(plot)
```

    ## function (x, y, ...) 
    ## UseMethod("plot")
    ## <bytecode: 0x000000000fea1f58>
    ## <environment: namespace:graphics>

## Including Plots

You can also embed plots, for example:

![](README_files/figure-gfm/pressure-1.png)<!-- -->

    ## function (x, y, ...) 
    ## UseMethod("plot")
    ## <bytecode: 0x000000000fea1f58>
    ## <environment: namespace:graphics>

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
