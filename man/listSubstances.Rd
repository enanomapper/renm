\name{listSubstances}
\alias{listSubstances}
\title{
Lists the substances available from an eNanoMapper service
}
\description{
Lists the substances found on an eNanoMapper service.
}
\usage{
listSubstances(service)
}
\arguments{
 \item{service}{the eNanoMapper server}
}
\value{
 \item{data}{the available substances}
}
\examples{
owners <- listSubstances(service="http://data.enanomapper.net/")
}
\author{
Egon Willighagen
}
