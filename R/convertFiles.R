convertFiles <- function(sourceDir = DAILY.FILES.DIRECTORY, destDir=DAILY.DATA.DIRECTORY){
  files <- list.files(path = sourceDir, pattern = ".dly")
  if (!file.exists(destDir))dir.create(destDir)
  for ( thisFile in 1:length(files)){
    print(thisFile) 
    X <- readDailyFile(files[thisFile], sourceDir )
    fname <- sub(".dly",".raw",files[thisFile])
    fname <- file.path(destDir,fname,fsep =.Platform$file.sep)
    write.table(X,fname)
    
  }  
   
}