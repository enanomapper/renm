\name{substanceInfo}
\alias{substanceInfo}
\title{
Looks up information about a specific substance
}
\description{
Looks up information about a specific substance as identified with the given
URI..
}
\usage{
substanceInfo(uri)
}
\arguments{
 \item{uri}{URI of the substance}
}
\value{
 \item{data}{the information of the substance}
}
\examples{
info <- substanceInfo(uri="https://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
}
\author{
Egon Willighagen
}
