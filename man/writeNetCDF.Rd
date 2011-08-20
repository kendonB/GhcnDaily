\name{writeNetCDF}
\alias{writeNetCDF}
 
\title{Writes a NetCDF file of a 3D data array
 
}
\description{This function writes a NetCDF file of the 3D data array
  create by the function \code{createArray}. The file contains
  all the dimenional data, the temperatures, and the dimension names
  for the variables. In addition the station Ids are written to a variable.
  
 
}
\usage{writeNetCDF(Temps, element, filename, 
                  directory = MONTHLY.DATA.DIRECTORY)
}
 
\arguments{
  \item{Temps}{A 3D array of temperatures
 
}
  \item{element}{The element ( TMAX or TMIN) being written. This should
  be supplied as a character string
 
}
  \item{filename}{the base file name without extension. The file name
  is used to create a filename that includes the base name, the element,
  the data and the .nc extension
 
}
  \item{directory}{The directory to write the file to
 
}
}
\details{The function defines and fills a NetCDF file of temperature
  and station names. A global attribute is set using the element
 
}
\value{Side effect is a file being written
 
}
 
\author{Steven Mosher
 
}
 

 
\seealso{code{\link{writeNetCDF}}
 
}
\examples{
 \dontrun{
  #sample code
 }
}
 
\keyword{ filetools }
 
