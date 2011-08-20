\name{readDailyMetadata}
\alias{readDailyMetadata}
 
\title{reads the metadata for the daily stations
 
}
\description{This function read the metadata for the station. This
  is different than the inventory metadata which reads the metadata
  about the files. This is station metadata: location, elevation,
  name, country and various identifier codes
 
}
\usage{readDailyMetadata(filename = "DailyMetadata.txt")
}
 
\arguments{
  \item{filename}{The filename you want to read
 
}
}
\details{  The folloing data is read and returned
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
\value{ returns a data frame of station metadata as described above
   
 
}
\references{  \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
\author{Steven Mosher
 
}
 

 

 
\examples{
\dontrun{

   # I can probably do a test file in the external directory
}
 
}
 
\keyword{ filetools }
 