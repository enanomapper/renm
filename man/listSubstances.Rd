\name{listSubstances}
\alias{listSubstances}
\title{
Lists the substances available from an eNanoMapper service
}
\description{
Lists the substances found on an eNanoMapper service.
}
\usage{
listSubstances(service,search,type)
}
\arguments{
 \item{service}{the eNanoMapper server}
 \item{search}{the text to search for}
 \item{type}{what to search for. Supported vaules are owner_name and citation.}
}
\value{
 \item{data}{the available substances}
}
\examples{
owners <- listSubstances(service="http://data.enanomapper.net/")
owners <- listSubstances(
  service="http://data.enanomapper.net/",
  search="10.1073/pnas.0802878", type="citation"
)
owners <- listSubstances(
  service="http://data.enanomapper.net/",
  search="NanoWiki", type="owner_name"
)
}
\author{
Egon Willighagen
}
