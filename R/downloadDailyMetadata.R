downloadDailyMetadata <- function(url = GHCN.DAILY.METADATA.URL, dest = "DailyMetadata.txt",
                            directory = getwd()){
  
  dest <- file.path(directory,dest,fsep= .Platform$file.sep)
  download.file(url,destfile = dest, mode ="wb")
  return(dest)
  
  
}