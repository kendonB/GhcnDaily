\name{downloadDailyData}
\alias{downloadDailyData}
 
\title{Downloads Daily temperature data
 
}
\description{The .dly files on the ftp server contain more than
  temperature data. This function will process those files directly
  and only download the TMAX and TMIN data out of the files. It is
  considerable faster than downloading the entire file. These files
  are given a .dat extension and written to the destination directory
 
}
\usage{downloadDailyData(urlList, directory = DAILY.DATA.DIRECTORY)
}
 
\arguments{
  \item{urlList}{A list of urls to download. This list is created by
  the function \code{makeDownloadList}
 
}
  \item{directory}{the destination directory. Other functions depend
  on finding the .dat files in this directory. 
 
}
}
\details{The function makes a connection to the server and reads the files
  on the server and downloads only the TMIN an TMAX data. You should build a
  download list that conatins all the stations you want to download. If the
  process is interupted, merely create a new download list with the missing files.
  
 
}
\value{The side effect is files written to the local machine
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{code{link{downloadDailyFiles}}
 
}
\examples{
\dontrun{
  # sample code
}
 
}
 
\keyword{ filetools }
 
