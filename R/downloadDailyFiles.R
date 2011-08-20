downloadDailyFiles <- function(urlList, directory = DAILY.FILES.DIRECTORY){
  
  if (!file.exists(directory)) dir.create(directory)
  
  
  for( files in 1: length(urlList)){
    download.file(urlList[files], 
                  destfile = file.path(directory,basename(urlList[files]),fsep=.Platform$file.sep), 
                  mode = "wb")
    
  }
}