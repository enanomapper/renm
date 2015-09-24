\name{listSubstanceOwners}
\alias{listSubstanceOwners}
\title{
Lists the substance owners available from an eNanoMapper service
}
\description{
Lists the substance owners found on an eNanoMapper service.
}
\usage{
listSubstanceOwners(service)
}
\arguments{
 \item{service}{the eNanoMapper server}
}
\value{
 \item{data}{the available substance owners}
}
\examples{
owners <- listSubstanceOwners(service="http://data.enanomapper.net/")
}
\author{
Egon Willighagen
}
