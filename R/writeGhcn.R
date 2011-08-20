writeGhcn <-function(Temps, element, filename, directory = MONTHLY.DATA.DIRECTORY){
  
  if (!file.exists(directory)) dir.create(directory)
  writeDate <- as.Date(Sys.time())
  writeDate <- gsub("-","",writeDate)
  fname <- paste(filename,"_",element,"_", writeDate,"_ghcn.dat", sep = "")
  fname <- file.path(directory,fname,fsep =.Platform$file.sep)
  
  stationId <- unlist(dimnames(Temps)[1])
  Years     <- as.integer(unlist(dimnames(Temps)[3]))
  
  for ( station in 1:length(stationId)){
    data <- Temps[station,,]
     
    
    data <- data.frame(Id =    as.character( rep(stationId[station],length(Years))),
                       Element = as.character(rep(element,length(Years))),
                       Year = Years,
                       t(data),stringsAsFactors = FALSE) 
    rownames(data)<-NULL
    if (station < length(stationId)){
      write.table(data,file = fname,quote = FALSE,
                  row.names = FALSE, col.names = FALSE, append = TRUE)
    } else {
      write.table(data,file = fname,quote = FALSE,
                  row.names = FALSE, col.names = TRUE, append = TRUE)
    }
     
    
  }
  
   
  
}