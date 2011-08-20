\name{writeGhcn}
\alias{writeGhcn}
 
\title{Writes a file in GHCNV3 format
 
}
\description{GHCNV3 format has muliple lines of data for a given
  station. Each line conatins an Id, element, Year and 12 data elements
  for temperatures. The format here is not an exactly mimic of 
  GhcnV3 format and can be read with a simnple \code{table.read}
  in R. However, the data elements are the same
 
}
\usage{writeGhcn(Temps, element, filename, 
                 directory = MONTHLY.DATA.DIRECTORY)
}
 
\arguments{
  \item{Temps}{A 3D array of temperatures
 
}
  \item{element}{The element "TMAX" or "TMIN". character string
 
}
  \item{filename}{The base filename. The base file name is used
  to create a complete file name including the element, the time
  and a marker for the ghcn format. The extension is .dat
 
}
  \item{directory}{The directory
 
}
}
\details{The 3D array is reformated into a ghcnV3 like format
  15 columns of data: Id, Element, Year and 12 temperatures
 
}
\value{Side effect is a file being written
 
}
 
\author{Steven Mosher
 
}
 

 
 
\examples{
 \dontrun{
 #sample code
 }
}
 
\keyword{ filetools }
 
