createStationMonthly <- function(data, na.rm = meanFunction,...){
  
  if (is.matrix(data) ){
   if (NCOL(data) == 33){
    if (colnames(data)[1] == "Year"){
     if (colnames(data)[2] == "Month"){
         stationId <- unique(rownames(data))
      if (length(stationId) ==1){
         naClass <- class(na.rm)
       if (naClass == "logical" | naClass == "function"){
           years <- max(data[,1]) - min(data[,1]) + 1
           date  <- seq(from = min(data[,1]), by = 1/12, length.out = years * 12)
           DF    <- data.frame(Date = date, Temp = NA)    
         if (naClass == "logical"){
           monthlyMean <- apply(data[ ,3:33],MARGIN = 1, FUN = mean, na.rm = na.rm)      
         }else {
           monthlyMean <- apply(data, MARGIN = 1, FUN = na.rm, ...)      
          }
         x<- cbind(Date = data[ ,1] + (data[ ,2] -1 )/12 ,Temp = monthlyMean)
         dx <- merge(DF, x, by.x = "Date", by.y= "Date", all = T)
         d  <- array(dx[ ,3],c(1,12,years))
         dimnames(d) <- list(stationId, month.abb, min(data[ ,1]):max(data[ ,1]))
        return(d) 
       }
          stop("na.rm must be a logical or a function")      
      }
       stop("Rownames must be 1 station Id only")  
     }
      stop("column 2 label must be Month")
    }
     stop(' Column 1 must be Year')
   }
    stop("Data matrix must have 34 columns")    
  }  
  return(NULL)
}