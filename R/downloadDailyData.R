downloadDailyData <- function(urlList, directory = DAILY.DATA.DIRECTORY, progress_bar = TRUE){
  if(progress_bar){
    pb <- txtProgressBar(max = length(urlList))
  }
  if (!file.exists(directory)) dir.create(directory)
  if (R.utils::isUrl(urlList[1])){
  #####
    for (thisUrl in 1:length(urlList)){
      if(progress_bar){
        setTxtProgressBar(pb, thisUrl)
      } else {
        print(urlList[thisUrl])
      }
      fname <- sub(".dly", ".raw", basename(urlList[thisUrl]))
      fname <- file.path(directory,fname,fsep =.Platform$file.sep)
      if(!file.exists(fname)){
        try_number <- 1
        downloaded <- FALSE
        while (try_number < 11 & !downloaded){
          try_number <- try_number + 1
          downloaded <- TRUE
          tryCatch({
            X <- readDailyFile(urlList[thisUrl],directory = directory)
            write.table(X,fname)
          }, error = function(e){
            downloaded <<- FALSE
          })
        }
        if (!downloaded){
          warning(paste("Downloading failed for", urlList[thisUrl]))
        }
      }
    }
    if(progress_bar){
      close(pb)
    }
    return(TRUE)
  }
  stop("Must supply a url list")
}
