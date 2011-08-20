\name{createStationMonthly}
\alias{createStationMonthly}

\title{Converts a daily series of temperatures into a monthly series
 
}
\description{GHCN Daily data consists of daily Tmax and daily Tmin data.
  This function takes daily data as an input and outputs a monthly
  mean. The monthly mean is provided for one measure. That is, if
  the function is fed Tmax, it returns Tmax monthly. Calculating
  the mean for a month is ultimately controlled by the function
  \code{meanFunction} which can also be user defined.
 
}
\usage{createStationMonthly(data, na.rm = meanFunction, ...)
 
}
 
\arguments{
  \item{data}{A matrix of temperatures created by \code{readDailyData}
   The matrix has station Id as rownames, Year in the first column
   month in the second, followed by data for 31 days ( NAs for missing)
}
  \item{na.rm}{This parameter controls the way a mean is calculated.
  set to FALSE and Rs standard \code{mean} function will be used. Any
  month with NA data will get an NA result. Set to TRUE and Rs standard
  \code{mean} function will be used. In most cases it should be set
  to the function \code{meanFunction}
 
}
  \item{\dots}{ The dots are provided to pass paramaters to 
  \code{meanFunction} or any user defined function.
 
}
}
\details{Data is read in from \code{readDailyData} and passed to
  this function. Calculating a "mean" monthly temperature can be
  user defined by setting \code{na.rm} to the user function or to
  the function \code{meanFunction}. Essentially, the issue is how
  one computes a mean in the presence of NA. R's basic function
  \code{mean} provides two options. Ignore NAs or return NA if there
  is one single NA in the vector being averaged. The by using the
  \code{na.rm} variable the user can control how NAs are treated.
  You can define a function that will return a mean if 3 days are
  missing, 13 days, 2 consecutive days, etc. 
 
}
\value{The function returns a long matrix with two columns.
  column number 1 is the date in fractional years. Missing months
  and missing years in the sequences are infilled. That is, the
  daily source data does not have records if an entire month is
  missing or an entire year is missing in a sequence. Ultimately,
  all the records of all the stations must be merged into a
  "complete" record with NAs for all missing data. This function
  does that for an individual measurand. TMAX or TMIN for the station
  provided is "infilled" with NA to give it a continuous gap free
  record form the first year of that station to the last year.
   
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{readDailyData}}, code{\link{meanFunction}}
 
}
\examples{
\dontrun{
  # example code
} 
}
 
\keyword{ TimeSeries }
 
