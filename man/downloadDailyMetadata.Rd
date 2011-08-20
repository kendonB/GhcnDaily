\name{downloadDailyMetadata}
\alias{downloadDailyMetadata}
 
\title{Download station data metadata
 
}
\description{The station metadata consists of station location information,
  name, state, country, and various identifiers for other systems, such
  as WMO. 
 
}
\usage{ downloadDailyMetadata(url = GHCN.DAILY.METADATA.URL, 
                  dest = "DailyMetadata.txt", directory = getwd())
}
 
\arguments{
  \item{url}{The url at NCDC where the data file resides
 
}
  \item{dest}{The destination file name on you local machine
 
}
  \item{directory}{The destination directory on your local machine
 
}
}
\details{ The relevant portion of the readme are copied below
  \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
   \tabular{ll}{
     ID:is the station identification code.  Note that the first two
           characters denote the FIPS  country code, the third character 
           is a network code that identifies the station numbering system 
           used, and the remaining eight characters contain the actual 
           station ID. 
    LATITUDE: is latitude of the station (in decimal degrees). 
    LONGITUDE: is the longitude of the station (in decimal degrees). 
    ELEVATION: is the elevation of the station (in meters, missing = -999.9). 
    STATE: is the U.S. postal code for the state (for U.S. stations only). 
    NAME: is the name of the station. 
    GSNFLAG:is a flag that indicates whether the station is part of the GCOS
           Surface Network (GSN). The flag is assigned by cross-referencing 
           the number in the WMOID field with the official list of GSN 
           stations. There are two possible values:

           Blank = non-GSN station or WMO Station number not available
           GSN   = GSN station 
    HCNFLAG: is a flag that indicates whether the station is part of the U.S.
           Historical Climatology Network (HCN).  There are two possible values:

           Blank = non-HCN station
           HCN   = HCN station 
   WMOID:is the World Meteorological Organization (WMO) number for the
           station.  If the station has no WMO number, then the field is blank. 
     }
}
\value{handle to the file
 
}
\references{ \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt}
 
}
\author{Steven Mosher
 
}
 

 
\examples{
 \dontrun{
  #write some stuff
 }
}
 
\keyword{ files }
 
