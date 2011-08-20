\name{GHCN.DAILY.DATA.URL}
\alias{GHCN.DAILY.DATA.URL}
\docType{data}
\title{ Url for data
 
}
\description{The base url that is used to generate the url list. All stations
  have their own seperate file. The files are named using the station ID.
  in order to download them all a 'url list' is created. that list uses this
  url as a "base" to build the complete url to the file, once the files
  have been chosen
 
}
\usage{ GHCN.DAILY.DATA.URL }
\format{
  The format is:
 chr "ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/all/"
}
\details{ The is the base url. All files under this directory
  have a name that is the station ID with a .dly suffix
 
}
\source{ The sources for that data are covered in the NCDC readme
  and in the file itself
 
}
\references{ \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
\examples{
print(GHCN.DAILY.DATA.URL)
 
}
\keyword{datasets}
