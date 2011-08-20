\name{readDailyInventory}
\alias{readDailyInventory}
 
\title{Read daily inventory
 
}
\description{The inventory contains the station Id, lat and lon and
  metadata about the file, as opposed to the station. That means it
  conatins the "elements" of a station ( Tmax,Tmin etc) as well as
  the years the station reported those elements.
 
}
\usage{readDailyInventory(filename = "DailyInv.txt", elements = NULL)
}
 
\arguments{
  \item{filename}{Filename for the inventory.
 
}
  \item{elements}{ If elements is set to NULL then all the stations
  will be returned. There are 31 different elements. If "TMAX" is supplied
  to this parameter only those stations with Tmax will return. You can
  supply a  vector  c("TMAX","TMIN"). Ordinarily you make one call
  for "TMIN" and another call for "TMAX" and then use \code{mergeInventory}
 
}
}
\details{  The Inventories have elements as discussed in the NCDC readme.
  The function will read the entire list of stations and return those
  that satisfy the "elements" parameter: elements include
  
 
}
\value{ returns an inventory of stations with the specified elements.
  elements are specified in section III of the readme. Copied below:
     PRCP = Precipitation (tenths of mm)
     SNOW = Snowfall (mm)
	   SNWD = Snow depth (mm)
     TMAX = Maximum temperature (tenths of degrees C)
     TMIN = Minimum temperature (tenths of degrees C)   
	   ACMC = Average cloudiness midnight to midnight from 30-second 
	          ceilometer data (percent)
	   ACMH = Average cloudiness midnight to midnight from 
	          manual observations (percent)
           ACSC = Average cloudiness sunrise to sunset from 30-second 
	          ceilometer data (percent)
	   ACSH = Average cloudiness sunrise to sunset from manual 
	          observations (percent)
	   AWND = Average daily wind speed (tenths of meters per second)
	   DAEV = Number of days included in the multiday evaporation
	          total (MDEV)
	   DAPR = Number of days included in the multiday precipiation 
	          total (MDPR)
           DASF = Number of days included in the multiday snowfall 
	          total (MDSF)		  
	   DATN = Number of days included in the multiday minimum temperature 
	         (MDTN)
	   DATX = Number of days included in the multiday maximum temperature 
	          (MDTX)
           DAWM = Number of days included in the multiday wind movement
	          (MDWM)
	   DWPR = Number of days with non-zero precipitation included in 
	          multiday precipitation total (MDPR)
	   EVAP = Evaporation of water from evaporation pan (tenths of mm)
	   FMTM = Time of fastest mile or fastest 1-minute wind 
	          (hours and minutes, i.e., HHMM)
	   FRGB = Base of frozen ground layer (cm)
	   FRGT = Top of frozen ground layer (cm)
	   FRTH = Thickness of frozen ground layer (cm)
	   GAHT = Difference between river and gauge height (cm)
	   MDEV = Multiday evaporation total (tenths of mm; use with DAEV)
	   MDPR = Multiday precipitation total (tenths of mm; use with DAPR and 
	          DWPR, if available)
	   MDSF = Multiday snowfall total 
	   MDTN = Multiday minimum temperature (tenths of degrees C; use with 
	          DATN)
	   MDTX = Multiday maximum temperature (tenths of degress C; use with 
	          DATX)
	   MDWM = Multiday wind movement (km)
           MNPN = Daily minimum temperature of water in an evaporation pan 
	         (tenths of degrees C)
           MXPN = Daily maximum temperature of water in an evaporation pan 
	         (tenths of degrees C)
	   PGTM = Peak gust time (hours and minutes, i.e., HHMM)
	   PSUN = Daily percent of possible sunshine (percent)
	   SN*# = Minimum soil temperature (tenths of degrees C)
	          where * corresponds to a code
	          for ground cover and # corresponds to a code for soil 
		  depth.  
		   
		  
	   SX*# = Maximum soil temperature (tenths of degrees C) 
	          where * corresponds to a code for ground cover 
		  and # corresponds to a code for soil depth. 
		  See SN*# for ground cover and depth codes. 

     THIC = Thickness of ice on water (tenths of mm)	
 	   TOBS = Temperature at the time of observation (tenths of degrees C)
	   TSUN = Daily total sunshine (minutes)
	   WDF1 = Direction of fastest 1-minute wind (degrees)
	   WDF2 = Direction of fastest 2-minute wind (degrees)
	   WDF5 = Direction of fastest 5-second wind (degrees)
	   WDFG = Direction of peak wind gust (degrees)
	   WDFI = Direction of highest instantaneous wind (degrees)
	   WDFM = Fastest mile wind direction (degrees)
     WDMV = 24-hour wind movement (km)	   
     WESD = Water equivalent of snow on the ground (tenths of mm)
	   WESF = Water equivalent of snowfall (tenths of mm)
	   WSF1 = Fastest 1-minute wind speed (tenths of meters per second)
	   WSF2 = Fastest 2-minute wind speed (tenths of meters per second)
	   WSF5 = Fastest 5-second wind speed (tenths of meters per second)
	   WSFG = Peak guest wind speed (tenths of meters per second)
	   WSFI = Highest instantaneous wind speed (tenths of meters per second)
	   WSFM = Fastest mile wind speed (tenths of meters per second)
	   WT** = Weather Type where ** has one of the following values:
	   WV** = Weather in the Vicinity where ** has one of the following 
	           values:
		    
}
\references{
   \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
   data read includes:
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
\author{Steven Mosher
 
}
 

 
\examples{
\dontrun{
 x<-readDailyInventory(elements = "TMAX")

}
 
}
 
\keyword{ filetools }
 
