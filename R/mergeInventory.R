mergeInventory <- function(Inventory1, Inventory2){
  Merged <- merge(Inventory1,Inventory2,  by.x = "Id", by.y ="Id",all = TRUE)
  x <- which( is.na(Merged$Lat.x))
  Merged$Lat.x[x]<-Merged$Lat.y[x]
  Merged$Lon.x[x]<-Merged$Lon.y[x]
  elements <- paste(Merged$Element.x,"/",Merged$Element.y,sep = "")
  fyear    <- apply(cbind(Merged$FirstYear.x,Merged$FirstYear.y),MARGIN =1, FUN=min,na.rm = TRUE)
  lyear    <- apply(cbind(Merged$LastYear.x,Merged$LastYear.y),MARGIN =1, FUN=max,na.rm = TRUE)
  Out <- data.frame(Id = as.character(Merged$Id), 
                    Lat = as.numeric(Merged$Lat.x), 
                    Lon = as.numeric(Merged$Lon.x),
                    Element = as.character(elements), 
                    FirstYear = as.numeric(fyear),
                    LastYear = as.numeric(lyear),stringsAsFactors = FALSE)
   
  #  fix the elements and years
  return(Out)
  
}