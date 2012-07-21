\name{DAILY.FILES.DIRECTORY}
\alias{DAILY.FILES.DIRECTORY}
\docType{data}
\title{Directory for downloaded .dly files
 
}
\description{The function \code{downloadDailyFiles} will
  download the entire dly file to this directory. These files
  contain all the data for a station , not just temperatures.
  Downloading all the files is a time consuming process and take
  over 24 hours even on a fast connection. There are 26000+
  files that conatin temperatures plus other variables.
 
}
\usage{ DAILY.FILES.DIRECTORY }
\format{
  The format is:
 chr "DailyFiles"
}
 
\source{\url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
\references{\url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
\examples{
print(DAILY.FILES.DIRECTORY)
 
}
\keyword{datasets}
