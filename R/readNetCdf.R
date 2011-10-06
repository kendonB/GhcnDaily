readNetCDF <- function(filename, directory = MONTHLY.DATA.DIRECTORY){
  fname       <- file.path(directory,filename,fsep=.Platform$file.sep)
  cdf         <- open.ncdf(fname)
  Temperature <- get.var.ncdf(cdf,"Temperature")
  Id          <- get.var.ncdf(cdf,"Id")
  mydims      <- cdf$dim
  myYears     <- mydims$years
  years       <- myYears$vals

  dimnames(Temperature) <- list(Id, month.abb, years)
  return(Temperature)
  
}

 


 