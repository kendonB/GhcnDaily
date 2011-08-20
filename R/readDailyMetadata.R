readDailyMetadata <- function(filename = "DailyMetadata.txt"){
  
  X <- readLines(filename)
  DF <- data.frame( Id = as.character(substr(X,1,11)),
                    Lat = as.numeric(substr(X,12,20)),
                    Lon = as.numeric(substr(X,21,30)),
                    Altitude = as.numeric(substr(X,32,37)),
                    State    = as.character(substr(X, 39,40)),
                    Name     = as.character(substr(X,42,71)),
                    GSN      = as.character(substr(X,73,75)),
                    HCN      = as.character(substr(X,77,79)),
                    WMO      = as.numeric(substr(X,81,85)),stringsAsFactors = FALSE)
  
  DF$Altitude[DF$Altitude == -999.9] <- NA
  DF$Altitude[DF$Altitude == -999]   <- NA
  DF$State[DF$State == "  "]         <- NA
  DF$GSN[DF$GSN == "   "]            <- NA
  DF$HCN[DF$HCN == "  "]             <- NA
  
  return(DF) 
 
}