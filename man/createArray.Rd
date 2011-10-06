\name{createArray}
\alias{createArray}


\title{Create a 3D array of temperature data
 
}
\description{Station data is comprised of a station Id and a
  series of temperatures in 1/10ths of a degree C. Other 
  packages such as RghcnV3 make use of a 3D array to analyze
  this data. The data is stored in an array with dimensions
  -station, month, year. This function creates an entire collection
  of stations given the input parameters and returns an array.
  That array can then be written to disk \code{writeNetCdf} or
  processed further. 
 
}
\usage{createArray(Inventory, element = "TMAX", 
                indir = DAILY.QA.DIRECTORY, na.rm = meanFunction, ...)
}
 
\arguments{
  \item{Inventory}{An inventory of stations. This inventory is created
  by \code{readDailyInventory}. It should have one and only one
  data element, either TMAX or TMIN.
 
}
  \item{element}{character string of "TMAX" or "TMIN". 
 
}
  \item{indir}{The input directory where the daily data files are located
 
}
  \item{na.rm}{The variable controls how monthly means will be calculated
  from daily data. The default is to use the \code{meanFunction}. That
  function allows you to specify the allowabel number of days missing
  before an NA is returned for the monthly mean. Also \code{na.rm} can
  be set to TRUE or FALSE and in this case the stand \code{mean} function
  of R will be used. Also, the user can define his own function for 
  calculating means and pass it to this function.
 
}
  \item{\dots}{additional parameters passed through to the \code{meanFunction}
 
}
}
\details{The code reads a daily station .dat file and then processes
  that file to obtain monthly means. Then the monthly means are inserted
  into the data array at the proper location. dimension 1 is stations.
  Dimension 2 is months and dimension 3 is years. All years and months
  are filled with NA if they are missing in the source data so that
  the time series are continous from start to finish. Dimnames are
  also set for each of the dimensions and so the object is self 
  documenting. ( version 1.1 will add this as an attribute)
 
}
\value{Return a 3D array of temperature data. Monthly means
 
}
 
\author{Steven Mosher
 
}
\note{The 3D array structure was inherited from Nick Stokes work
 
}

 

\seealso{\code{\link{meanFunction}}
 
}
\examples{
 \dontrun{
 # sample code
 }
}
 
\keyword{ TimeSeries }
 
