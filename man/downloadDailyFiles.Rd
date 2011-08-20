\name{downloadDailyFiles}
\alias{downloadDailyFiles}
 
\title{Downloads the GHCN daily files
 
}
\description{Every station in GHCN Daily has a file of data. There are
  over 77000 files on the ftp. To initiate a download you need
  a list of the  Urls and you specify a download directory.
  The files in the url list are downloaded to your local machine.
  The list of files to download is created by the function
  \code{makeDownloadList}. This function downloads the entire
  file ( .dly). Files contain more than temperature data.
 
}
\usage{downloadDailyFiles(urlList, directory = DAILY.FILES.DIRECTORY)
}
 
\arguments{
  \item{urlList}{A vector of fully qualified urls that point to
    individual files. This list is created by \code{makeDownloadList}
 
}
  \item{directory}{The default directory for storing local files. Note
  that this directory has .dly files while the data directory has .dat
  files
 
}
}
\details{ The download list contains the urls and those urls are
  used to call the \code{download.file} function. If the download
  should fail or generate warnings for empty files Then rebuild the
  the urlList and resubmit the request. ( a function for doing this
  will be added in a future release.)
 
}
\value{The side effect is local files created
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{downloadDailyData}}
 
}
\examples{
 \dontrun{
  # sample code
 
 }
}
 
\keyword{ filetools }
 
