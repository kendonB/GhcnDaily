downloadDailyInventory <- function(url = GHCN.DAILY.INVENTORY.URL, dest = "DailyInv.txt",
                            directory = getwd()){
  
  dest <- file.path(directory,dest,fsep= .Platform$file.sep)
  download.file(url,destfile = dest, mode ="wb")
  return(dest)
  
  
}