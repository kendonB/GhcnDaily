\name{readDailyData}
\alias{readDailyData}
 
\title{A function to read Daily .dat files
 
}
\description{Daily .dat files contain both TMIN and TMAX data elements
  This function reads an specified element and returns that data
  in a format expected by other functions such as \code{createMonthlyStation}
 
}
\usage{readDailyData(filename, element = "TMAX", 
                     directory = DAILY.QA.DIRECTORY)
}
 
\arguments{
  \item{filename}{Filename to be read. do not include the directory
   as a part of the filename
 
}
  \item{element}{character "TMAX" to return maximum temperatures
  "TMIN" for minimum temperatures
 
}
  \item{directory}{The directory where the .dat files are located.
 
}
}
\details{ The files are read and a matrix is returned with stationId
 in the rownames and Year followed by 12 columns of temperature data
 
}
\value{Returns a matrix of temperature data for futher processing.
  
 
}
 
\author{Steven Mosher
 
}
 
 
\examples{
 \dontrun{
 # sample code
 }
}
 
\keyword{ filetools }
 
