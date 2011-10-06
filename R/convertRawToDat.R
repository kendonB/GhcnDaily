convertRawToDat <-function(   QaFlags = c("D","G","I","K","L","M","N","O","R","S","T","W","X"),
                            sourceDir = DAILY.DATA.DIRECTORY, destDir = DAILY.QA.DIRECTORY ){
  
  #  converts raw files to dat files by applying the QA flags
  rawFiles <- list.files(path = sourceDir, pattern = "\\.raw")
   
  for( thisFile in 1:length(rawFiles)){
    inName <- file.path(sourceDir,rawFiles[thisFile], fsep = .Platform$file.sep)
    outName <- file.path(destDir,rawFiles[thisFile], fsep = .Platform$file.sep)
    outName <- sub(".raw",".dat",outName)
    X      <- read.table(inName,stringsAsFactors = FALSE)
    Temps  <- as.matrix(X[ ,5:35])
    Flags  <- X[ ,36:66]
    Z      <- apply(Flags,MARGIN=2,FUN = function(x){substr(x,2,2)})
     
    Z[Z == " "] <- NA
    Z[is.na(Z)] <- 0
    Z[ Z %in% QaFlags ]<-NA
    Z <- matrix(as.numeric(Z), ncol = ncol(Temps),nrow=nrow(Temps))
    X[,5:35] <- X[,5:35] + Z
    write.table(X[,1:35],outName)
  }
   
  
}

  