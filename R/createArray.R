createArray <- function(Inventory, element = "TMAX",
                          indir = DAILY.DATA.DIRECTORY,                            
                          na.rm = meanFunction,...){
  require(abind)
  invElement <- unique(Inventory$Element)
  if (length(invElement) > 1) stop("use an inventory with one element")
  if (element != invElement) stop("Elements in Inventory dont match element parameter")
    
  FirstYear <- min(Inventory$FirstYear)
  LastYear  <- max(Inventory$LastYear)
  years     <- (LastYear - FirstYear) + 1
  DATA      <- array(NA,c(nrow(Inventory),12,years))
  dimnames(DATA) <- list(Inventory$Id, month.abb, FirstYear:LastYear)
  filenames <- list.files(path = indir, pattern = ".dat")
  invFile   <- paste(Inventory$Id,".dat",sep = "")
  files     <- which(filenames %in% invFile)
   
  for (thisFile in files){
    
     station <- readDailyData(filename = filenames[thisFile], element= element,directory = indir)
     print(filenames[thisFile])
     if (!is.null(station)){
        Monthly <- createStationMonthly(station, na.rm = na.rm,...)
        
        if (!is.null(Monthly)) afill(DATA)<-Monthly
     }
      
  }
   return(DATA)
}
   