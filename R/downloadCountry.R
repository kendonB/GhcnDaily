downloadCountry <- function(url = GHCN.DAILY.COUNTRY.URL, dest = "countryCodes.txt",
                            directory = getwd()){
  
  dest <- file.path(directory,dest,fsep= .Platform$file.sep)
  download.file(url,destfile = dest, mode = "wb")
  return(dest)
  
  
}