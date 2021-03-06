PotM #2 : lubridate
========================================================
 
Making dates a little easier to deal with


```r
# install.packages('lubridate')
library(lubridate)
```

[http://github.com/MontrealRUserGroup/PotM](http://bit.ly/mtlr-potm)

Problem: Parsing & Manipulating Dates can be painful
================
  ```
why is this painful?

```

lubridate: parsing dates
================
  Lubridate's parsing functions read strings into R as POSIXct date-time objects. Users should choose the function whose name models the order in which the year ('y'), month ('m') and day ('d') elements appear the string to be parsed: dmy, myd, ymd, ydm, dym, mdy, ymd_hms).

Lubridate can also parse partial dates from strings into Period-class objects with the functions hm, hms and ms.




lubridate : manipulate dates
==============
```
"distinguishes between moments in time (known as instants) and spans of time (known as time spans, see Timespan-class). Time spans are further separated into Duration-class, Period-class and Interval-class objects."  
```


```r
is.Date()
is.POSIXt()
is.instant()

now()
today()
origin() # 1970-01-01 00:00:00

# second, minute, hour, day, yday, mday, wday, week, month, year, tz, dst

```



instants, time zones & more
====



```r
unclass(now())
```

```
[1] 1.398e+09
attr(,"tzone")
[1] ""
```

```r

# Each POSIXct object is saved as the number of seconds it occurred after 1970-01-01 00:00:00.
```




conclusion
=============  




Use Cases
=========
```
> help(data.table)

> The package can be used just for rapid programming (compact syntax). 
> Largest compute time benefits are on 64bit platforms with plentiful RAM, or when smaller datasets are repeatedly queried within a loop, or when other methods use so much working memory that they fail with an out of memory error. 
```

Usage
=======

1. Define keys
2. Fast grouping
3. Fast time series join




summary
=========
1. 
2. 
3. 


refs
================

[1] [CRAN Intro Vignette](http://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.pdf)  
[2] [Fast Summary Statistics by yhat](http://blog.yhathq.com/posts/fast-summary-statistics-with-data-dot-table.html)  
[3] [r-forge](http://datatable.r-forge.r-project.org/)



```r
# press the F1 key while 'lubridate' is 
# selected, or type: 
? lubridate
```

