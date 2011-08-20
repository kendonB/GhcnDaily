\name{readDailyFile}
\alias{readDailyFile}

\title{Reads a daily (.dly) file
 
}
\description{This function read a .dly file and returns the TMIN
  and TMAX elements only.
 
}
\usage{readDailyFile(filename, directory = DAILY.FILES.DIRECTORY)
}
 
\arguments{
  \item{filename}{The filename ( station ID) to be read
 
}
  \item{directory}{The directory where the file is located
 
}
}
\details{This function reads a .dly file and extracts TMIN
  and TMAX and returns a dataframe for the station including the
  Id, Year, element and 31 columns of data for the days of the month
 
}
\value{A data.frame of data for the file.
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{readDailyData}}
 
}
\examples{
 \dontrun{
 #sample code
 }
}
 
\keyword{ filetools }
 
