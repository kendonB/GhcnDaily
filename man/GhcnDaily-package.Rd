\name{GhcnDaily-package}
\alias{GhcnDaily-package}
\alias{GhcnDaily}
\docType{package}
\title{Ghcn Daily Climate Data
 
}
\description{ A package that downloads and processes GHCN daily data.
  NCDC maintains an ftp repository of climate stations that reported
  on a daily basis. The data consists of over 77000 stations with
  reporting periods giong back over 100 years. many "elements" of
  the climate are recorded. This package is primarly concerned with
  temperature measures, although some functions can be used to
  retrieve other "elements"
 
}
\details{
\tabular{ll}{
Package: \tab GhcnDaily\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2011-10-06\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab yes\cr
}
 
}
\section{1.0 Introduction}{ The purpose of this package is currently limited
  to downloading and formating NCDC's Global Historical Climate Network
  daily temperature data. The source files conatin more data than those two 
  variables and future releases will handle them. The process flow proceeds
  roughly according to these steps. A station inventory is downloaded to
  your local machine \code{downloadDailyInventory}. This copies a 21MB file
  to your workspace. The file contains information about all of the station
  files. For example the Id, the elements it contains (TMAX and TMIN) and
  the first and last year of data. You should first run the demo code
  \code{demo(DownloadDemo).}. That will get you the base files to do the
  data file downloads. The Inventory can be read with the function
  \code{readDailyInventory} and processed to select subsets of data to download.
  One a list is establised you build a download list with \code{makeDownloadList}.
  This function merely creates a list of urls that used to fetch the station data.
  Data is downloaded via one of two function \code{downloadDailyData} or the
  more comprehensive \code{downloadDailyFiles}. The latter copies all data to
  disk. It can take a day on a fast connection at roughly 1000 files per hour.
  using \code{downloadDailyData} The data from the "dly" files is downloaded
  to the  "DailyRaw" directory. Only TMAX and TMIN data is downloaded. The
  "Raw" data includes all data and the QA flags. This data in then processed
  by the function \code{convertRawToDat}. The QA flags are applied and you
  have clean data in the "DailyData" directory.
  The next step is to create a data array from all the individual files in
  the data directory. The function \code{createArray} is the workhorse function
  here. It takes an inventory of stations, and element (TMAX or TMIN) and reads
  the directory for all the files that are in the inventory. It systematically
  build a 3D array of data. The dimensions are 'station','month' and 'year'. 
  That array can then be written to disk as one file containing all the station
  data. This is done with \code{writeNetCDF} or \code{writeGhcn}. NetCDF is
  the preferred format. 
  


}

 

\author{Steven Mosher  
 

Maintainer: Steven Mosher <moshersteven@gmail.com>
 
}
\references{ \url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
 
}
 
\keyword{ package }
 
\examples{
\dontrun{
  # get all the data
  demo(getAlldata)
}
}
