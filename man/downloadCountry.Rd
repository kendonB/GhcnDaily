\name{downloadCountry}
\alias{downloadCountry}
 
\title{Downloads Country FIPS and name
 
}
\description{Abbreviations for countries and their names
 
}
\usage{downloadCountry(url = GHCN.DAILY.COUNTRY.URL, 
                dest = "countryCodes.txt", directory = getwd())
}
 
\arguments{
  \item{url}{ url defaults to the URL value set globally.
 
}
  \item{dest}{The destination name for this file on your local system
 
}
  \item{directory}{The destination directory. It is advisable to keep this
  as your working directory for GhcnDaily
 
}
}
\details{Downloads a table of FIPS codes
 
}
\value{returns a handle to the local file
 
}
\references{\url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-countries.txt}
  
}
\author{Steven Mosher
 
}
 
 
\examples{
 \dontrun{
   # maybe we should just build in the fips code
   
 
 }
}
 
 
\keyword{ files }
 
