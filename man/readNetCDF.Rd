\name{readNetCDF}
\alias{readNetCDF}
 
\title{Reads a NetCDF file of temperatures
 
}
\description{Files written by \code{writeNetCDF} can be read with this
  function. This merely wraps common \code{ncdf} functions for users
  who are not aquainted with the package. It also insures that
  the data structure ( a 3D array) is properly named for use
  with other packages. Dimnames are written for the structure
  and station Ids are properly applied
 
}
\usage{readNetCDF(filename, directory = MONTHLY.DATA.DIRECTORY)
}
 
\arguments{
  \item{filename}{The filename. These have a .nc extension
 
}
  \item{directory}{The directory where monthly data is written
 
}
}
\details{The NetCdf file conatins all the information required
  to build a 3D array of temperatures. The first dimension is
  stations, the second is months, and the third is years. the 
  Dimnames are all written to the object before it is returned.
 
}
\value{A 3D array of temperatures. The attribute ( TMAX or TMIN)
  can be read from the NetCDF file (global attributes. It is not 
   associated with the data structure.
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{writeNetCDF}}
 
}
\examples{
 \dontrun{
 #sample
 }
}
 
\keyword{ filetools }
 
