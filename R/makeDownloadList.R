makeDownloadList <- function(Inventory, baseUrl = GHCN.DAILY.DATA.URL){
  
  AllUrls <- paste(baseUrl,Inventory$Id,".dly", sep = "")
  return(AllUrls)
  
}