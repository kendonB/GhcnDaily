readDailyInventory <- function(filename = "DailyInv.txt",elements = NULL ){
  
  X <- read.table(filename,col.names = c("Id","Lat","Lon","Element","FirstYear","LastYear"),
                          colClasses = c("character","numeric","numeric","character",
                                        "integer","integer"))
  if (!is.null(elements)){
    dex <- which(X$Element %in% elements)
    X <- X[dex,]
  }
  
  return(X)
}