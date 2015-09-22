\name{listBundles}
\alias{listBundles}
\title{
Lists the bundles available from an eNanoMapper service
}
\description{
Lists the bundles found on an eNanoMapper service.
}
\usage{
listBundles(service)
}
\arguments{
 \item{service}{the eNanoMapper server}
}
\value{
 \item{data}{the available bundles}
}
\examples{
bundles <- listBundles(service="http://data.enanomapper.net/")
}
\author{
Egon Willighagen
}
