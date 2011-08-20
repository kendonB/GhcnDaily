\name{makeDownloadList}
\alias{makeDownloadList}
 
\title{Creates a list of urls to feed to the download function
 
}
\description{ This function takes an inventory as an input and
  uses the ID and the base URL to create a list of urls to download.
  It is supplied with an object that has station IDs. Those Ids
  are used in conjunction with the base url to create a list
  of urls to individual files on the ftp.
 
}
\usage{makeDownloadList(Inventory, baseUrl = GHCN.DAILY.DATA.URL)
}
 
\arguments{
  \item{Inventory}{The inventory you want to fetch
 
}
  \item{baseUrl}{The base url that final urls are constructed from
 
}
}
 
\value{returns a vector of urls that you can iterate over. Simply,
  you get a vector of url strings that can then be passed to a download
  function to download the file.
 
}
 
\author{Steven Mosher
 
}
 

 
\examples{
\dontrun{
   #add some sample code
}
 
}
 
\keyword{ filetools}
 
