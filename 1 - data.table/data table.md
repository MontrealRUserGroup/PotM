PotM#1 : data.table
==================

March 25, 2014  


```r
# install.packages('data.table')
library(data.table)
```

[github.com/MontrealRUserGroup/PotM](http://bit.ly/mtlr-potm)

Problem: R can be a bit... slow
================
```
flexibility 

vs. 

performance
```

data.frame: the ultimate type
================



```r
df.data <- data.frame(a=1:5,b=1:5)
df.data
```

```
  a b
1 1 1
2 2 2
3 3 3
4 4 4
5 5 5
```


Solution : the data.table
==============
```
"contains pre-computed indexes for various columns to accelerate operations like data selection and merges"  

- Wes McKinney
```

faster, better, stronger
=============  


```r
dt.data <- data.table(a=1:5,b=1:5)
dt.data
```

```
   a b
1: 1 1
2: 2 2
3: 3 3
4: 4 4
5: 5 5
```


dt vs. df
=====

1. never has rownames
  * may have one key of one or more columns
  * key is used for row indexing instead of rownames
2. enhanced functionality for ...
  * fast joins of keyed tables
  * fast aggregation
  * fast last observation carried forward (LOCF)  
  * fast columns add/modify/delete, with no copy

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


```r
dt <- data.table(df.data)
```


summary
=========
1. better
2. faster
3. stronger


refs
================

[1] [CRAN Intro Vignette](http://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.pdf)  
[2] [Fast Summary Statistics by yhat](http://blog.yhathq.com/posts/fast-summary-statistics-with-data-dot-table.html)  
[3] [r-forge](http://datatable.r-forge.r-project.org/)



```r
help(data.table)

example(data.table) 
```


