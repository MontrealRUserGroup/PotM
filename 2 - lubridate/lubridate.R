install.packages('lubridate')
library(lubridate)

# POSIXct objects store the number of seconds 
# occurring since 1970-01-01 00:00:00

now() # yyyy-mm-dd hh:mm:ss
today() # yyyy-mm-dd
origin # 1970-01-01 00:00:00

unclass(today()) # number of days since origin

d <- as.Date(origin)

is.instant(d)

#  date-time objects -> dmy, myd, ymd, ydm, dym, mdy, ... , ymd_hms
ymd(201211)

# period-class objects ->  hms, hm and ms
t <- c("11:22", "22:33", "33:44"); t
t <- ms(t); t

# ACCESSOR FUNCTIONS:

# second, minute, hour, day, 
# yday, mday, wday, 
# week, month, year, 
# tz, and dst.

x <- ymd("2012-03-26"); x
second(x)
second(x) <- 1; x
second(x) <- 61; x

# TIMESPANS: intervals, durations, periods

# INTERVALS are timespans that begin at a specific instant 
# and end at a specific instant. Intervals retain complete information 
# about a timespan. They provide the only reliable way to 
# convert between periods and durations.

i <- as.interval(origin, today()); i
i<- origin %--% today(); i

# DURATIONS easure the exact amount of time that occurs between two instants. 
# This can create unexpected results in relation to clock times if a leap second, 
# leap year, or change in daylight savings time (DST) occurs in the interval.

as.duration(i)

# PERIODS measure the change in clock time that occurs between two instants. 
# Periods provide robust predictions of clock time in the presence of 
# leap seconds, leap years, and changes in DST.

# TIMEZONES

with_tz()
force_tz()

# HELP

# hit F1 while 'lubridate' is selected, is the same as typing: 
? lubridate 

# References
[Vignette](http://www.r-statistics.com/2012/03/do-more-with-dates-and-times-in-r-with-lubridate-1-1-0/)