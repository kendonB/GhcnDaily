\name{DAILY.DATA.DIRECTORY}
\alias{DAILY.DATA.DIRECTORY}
\docType{data}
\title{Directory for raw station data with QA flags
 
}
\description{The local directory where all functions expect to find
  the raw source data. All files here have a .raw extension
 
}
\usage{ DAILY.DATA.DIRECTORY }
\format{
  The format is:
 chr "DailyRaw"
}
\details{ The data directory name. Avoid changing it unless understand the
  code completely. Recall that on start this value will always be read
  into the variable.  
 
}
 
 
\examples{
print(DAILY.DATA.DIRECTORY)
 
}
\keyword{directories}
