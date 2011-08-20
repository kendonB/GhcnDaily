\name{mergeInventory}
\alias{mergeInventory}
 
\title{A function to merge a Tmax inventory and Tmin Inventory
 
}
\description{The Inventory file conatins records for stations acoording
  to the element they conatin. Most stations report both, some report
  only one. The time periods can also be different. This function
  takes two inventories and merges them to produce a consolidated
  record. The element variable is written to indicate if both
  are present and the smallest start year and largest end year
  are recorded
 
}
\usage{mergeInventory(Inventory1, Inventory2)
}
 
\arguments{
  \item{Inventory1}{ An inventory with one element, for example TMAX
 
}
  \item{Inventory2}{An Inventory with one element, for example TMIN
 
}
}
\details{The inventories are merged on the ID so that the result
  is the union of both. The elements are merged into a single field
  for example TMAX/TMIN  or TMAX/NA if Tmin is missing for that
  station. The years are changed to reflect the earliest start year
  and the latest end year. 
 
}
\value{Returns a merged Inventory
 
}
 
\author{Steven Mosher
 
}
 

 

 
\examples{
\dontrun{

}
 
}
 
\keyword{ filetools}
\keyword{ metadata } 
