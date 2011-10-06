\name{convertFiles}
\alias{convertFiles}
 
\title{Convert an entire directory of data
 
}
\description{Ghcn daily files contain data beyong maximum and minimum
  temperatures ( over 30 elements). The GhcnDaily package supports
  the download of these complete files. Converting these files to
  temperature only files can be accomplished by calling the function
  \code{convertFiles}
 
}
\usage{convertFiles(sourceDir = DAILY.FILES.DIRECTORY,
                  destDir = DAILY.DATA.DIRECTORY)
}
 
\arguments{
  \item{sourceDir}{The source directory where the \code{.dly} files
   are kept. By default this is \code{"DailyFiles"} which is
   the default value of \code{DAILY.FILES.DIRECTORY}
 
}
  \item{destDir}{The destination directory where the \code{.raw} files
   are written. By default this is \code{"DailyRaw"} which is
   the default value of \code{DAILY.DATA.DIRECTORY}
 
}
}
\details{ The .dly files are read and if the file contains a TMAX
  or TMIN element then that data is read out and written to a
  the .raw file in the destination directory. Filenames remain
  the same. That is the station Id is the filename
 
}
\value{Side effect is converting all the files in the source directory
  to data files in the destination directory
 
}
\references{\url{ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/readme.txt}
  See the readme for documentation on the .dly files
 
}
\author{Steven Mosher
 
}
 

 
\examples{
\dontrun{

  # write sample code
}
 
}
 
\keyword{ filetools }
 
