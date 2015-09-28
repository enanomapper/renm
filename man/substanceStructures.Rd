\name{substanceStructures}
\alias{substanceStructures}
\title{
Looks up the composition structures for a specific substance
}
\description{
Looks up the structures in the composition of a specific substance as identified with the given
URI.
}
\usage{
substanceStructures(uri)
}
\arguments{
 \item{uri}{URI of the substance}
}
\value{
 \item{data}{the structures of the substance}
}
\examples{
info <- substanceStructures(uri="http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
}
\author{
Egon Willighagen
}
