readCountry <- function(filename = "countryCodes.txt"){
  
  X <- readLines(filename)
  CC <- substr(X,1,2)
  countryName <- substr(X,3,nchar(X))
  return(data.frame(Fips = CC, Name = countryName))
  
}