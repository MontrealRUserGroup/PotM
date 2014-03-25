PotM #1 data.table
==================

## March 2014
### http://rpubs.com/vdimarco/datatable

install.packages('data.table')
====================


```r
library(data.table)
```


## http://datatable.r-forge.r-project.org/

Features
=============

1. Keys
2. Fast Grouping
3. Fast time series join


data.frame vs. data.table
==============


```r
# Making a data.frame from vectors 
df.data <- data.frame(a=1:5,b=1:5)

# Making a data.table from vectors 
dt.data <- data.table(a=1:5,b=1:5)

# Making a data.table from a data.frame 
dt.data <- data.table(df.data)
```


Query a Database, Analyze in R
=======

MySQL -> R 

(d)plyr vs. data.table
=============

key info from intro goes here:

setkey(dt.boxscore, date, team)


Further Reading
================

http://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.pdf

http://blog.yhathq.com/posts/fast-summary-statistics-with-data-dot-table.html
