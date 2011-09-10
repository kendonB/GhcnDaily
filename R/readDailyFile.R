readDailyFile <- function(filename, directory = DAILY.FILES.DIRECTORY){
  
  if (!isUrl(filename)){  
   fname <- file.path(directory,filename, fsep =.Platform$file.sep)
  } else {
    fname <- filename
  }
  
  
  X <- readLines(fname)
  Elements  <-   substr(X,18,21)
  dex <- grep("(^TM).",Elements  )
  X <- X[dex]
  Elements <- Elements[dex]
  Id     <- substr(X,1,11)  
  Year   <- as.numeric(substr(X,12,15))
  Month  <- as.numeric(substr(X,16,17))
  days   <- matrix(NA,nrow = length(X),ncol = 31)
  day1column <- 22
  day1end    <- 26
  increment  <- 8
  for (day in 1:31){
    days[,day] <- as.numeric(substr(X,day1column + (increment* (day-1)),day1end + (increment* (day-1))))
  }
  days[days == -9999] <- NA
  
  Data <- cbind(Id, Elements, Year, Month, days)   
  monthDays <- 1:31
  cnames    <- paste("Day", monthDays, sep = "")
  currentNames <- colnames(Data)
  currentNames[5:ncol(Data)] <- cnames
  colnames(Data) <- currentNames
  return(Data)
  
}