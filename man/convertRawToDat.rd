\name{convertRawToDat}
\alias{convertRawToDat}
 
\title{ Converts raw files with QA flags to dat files
 
}
\description{ Dly  files contain QA flags. When these files are converted
  to *.raw files the QA flags are retained. In order to further process the data
  this function will apply the QA flags and remove any temperatures that Fail
  QA.  *.dat files are output by this function
 
}
\usage{ convertRawToDat(QaFlags = c("D","G","I","K","L","M","N","O","R","S","T","W","X"),
     sourceDir = DAILY.DATA.DIRECTORY, destDir = DAILY.QA.DIRECTORY)
}
 
\arguments{
  \item{QaFlags}{ This is a list of all the QA flags that will be applied. When a
   QA flag is applied to the daily data that data is set to NA. For a list of flags
   see the ftp readme.
  
  }
  \item{sourceDir}{
   The source directory  of the *.raw files
}
  \item{destDir}{
   The source directory of the *dat files
}
}
\details{
  Files are downloaded to the dailyData  directory. Running this function applies
  the QA flags and removes bad values. the final format is *.dat
}
\value{
  side effect is to write a directory of data
}
\references{
  see ftp readme
}
\author{Steven Mosher
  
 

 
}
 
\examples{\dontrun{
  # sample code
}
 
}
 
\keyword{ filetools }
 
