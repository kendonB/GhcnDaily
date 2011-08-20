\name{downloadDailyInventory}
\alias{downloadDailyInventory}
 
\title{Downloads an Inventory
 
}
\description{Downloads an inventory of stations for daily GHCN data. The inventory
  of stations is not a typical inventory. It contains metadata about the
  temperatures files themselves. Station "metadata" is provided in a different
  file. The inventory contains information about the first and last years
  of reporting and the "element reported". Some stations only report
  Tmin, others Tmax, and most report both. 
 
}
\usage{
  downloadDailyInventory(url = GHCN.DAILY.INVENTORY.URL, 
                 dest = "DailyInv.txt", directory = getwd())
}
 
\arguments{
  \item{url}{The url where the daily data is maintained by NCDC
 
}
  \item{dest}{The destination name for the inventory data
 
}
  \item{directory}{Destination directory
 
}
}
\details{The relevant portion of the NCDC readme is repeated below:
\tabular{ll}{

  ID: is the station identification code.  Please see "ghcnd-stations.txt"
           for a complete list of stations and their metadata. 
  LATITUDE:  is the latitude of the station (in decimal degrees). 
  LONGITUDE: is the longitude of the station (in decimal degrees). 
  ELEMENT:   is the element type.  See section III for a definition of elements. 
  FIRSTYEAR: is the first year of unflagged data for the given element. 
  LASTYEAR:  is the last year of unflagged data for the given element.
 }
 }
   
 
\value{returns a handle to the file
 
}
\references{ \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
\author{Steven Mosher
 
}
 

 

 
\examples{
 \dontrun{
 # sample code
 }
}
 
\keyword{ files }
 
