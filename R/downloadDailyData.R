downloadDailyData <- function(urlList, directory = DAILY.DATA.DIRECTORY){
   
  if (!file.exists(directory)) dir.create(directory)
  if (isUrl(urlList[1])){
  #####
  for (thisUrl in 1:length(urlList)){
    print(urlList[thisUrl])
    X <- readDailyFile(urlList[thisUrl],directory = directory)
    fname <- sub(".dly",".dat",basename(urlList[thisUrl]))
    fname <- file.path(directory,fname,fsep =.Platform$file.sep)
    write.table(X,fname)
  }
    return(TRUE)
  }
  stop("Must supply a url list")
   
}
