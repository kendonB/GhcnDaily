meanFunction <- function(data,dayMiss = 3){
  isLeap <- function(Year){
    if ( (Year -1600) %% 4 == 0) return(TRUE) else return(FALSE)
  }
  daysOfMonth <- c(31,28,31,30,31,30,31,31,30,31,30,31)
  leapDays    <- c(31,29,31,30,31,30,31,31,30,31,30,31)
  
  year  <- data[1]
  month <- data[2]
  Days  <- sum(!is.na(data[3:33]))
  if ( isLeap(year)) Missing <-  leapDays[month] - Days
  if ( !isLeap(year)) Missing <- daysOfMonth[month] - Days
  if (Missing > dayMiss){
    return(NA)
  } else {
    return( mean(data[3:33], na.rm = TRUE))
  }
  
}