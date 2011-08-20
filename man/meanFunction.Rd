\name{meanFunction}
\alias{meanFunction}
 
\title{A specialize function for calculating a mean
 
}
\description{The \code{mean} function in R has limited options
  in calculating a mean in the presence of NA values. It is all
  or nothing. NA can either be completely ignored or NA is returned
  if any value is NA. This function provides the flexibility to
  specify the number of NAs on a monthly basis. This function
  is used internally by other functions. Source is provided
  to illustrate how a user can define their own function
 
}
\usage{meanFunction(data, dayMiss = 3)
}
 
\arguments{
  \item{data}{this data is a single line or month of daily data. It
  it contains  33 data elements. Year, Month and 31 values
 
}
  \item{dayMiss}{The number of days that can be missing before an
  NA is returned. 3 days missing is set as the default. This can be
  changed by setting parameters in \code{createStationMonthly}
 
}
}
\details{The function calculates the number of reports missing. If the
  days missing exceeds the threshold ( daysMiss) then NA is returned
  to the caller. Otherwise \code{mean} is called with \code{na.rm = TRUE}
 
}
\value{ Return NA if the number of missing days exceeds daysMiss
    otherwise it returns the mean
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{createStationMonthly}}
 
}
\examples{\dontrun{
  # sample
}
 
}
 
\keyword{ TimeSeries }
 
