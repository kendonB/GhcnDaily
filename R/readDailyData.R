readDailyData <- function(filename,element = "TMAX",directory = DAILY.QA.DIRECTORY){
  
  fname <- file.path(directory,filename, fsep =.Platform$file.sep)
  
  X <- read.table(fname)
  dex <- which(X$Element == element)
  X <- X[dex,]
  if (nrow(X) == 0) return(NULL)
  Data <- as.matrix(X[ ,3:ncol(X)])
  dimnames(Data)<-list(X$Id,colnames(X)[3:ncol(X)])
  return(Data)
 
}