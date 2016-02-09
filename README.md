[![Build Status](https://travis-ci.org/enanomapper/renm.svg?branch=master)](https://travis-ci.org/enanomapper/renm)

# renm

R Client library for the eNanoMapper API (http://enanomapper.net/) (license: MIT).
The API is extensively described in the paper by
[Jealizkova et al. in the BJON](http://dx.doi.org/10.3762/bjnano.6.165) and can
be browsed interactively online at http://enanomapper.github.io/API/.

# install

    > install.packages(c("curl", "plyr", "jsonlite")) # dependencies
    > install.packages("testthat") # if you want to test the package
    > install.packages("devtools") # to install from GitHub
    > library(devtools)
    > install_github("enanomapper/renm")

The package is tested with curl 0.9.5, but I have encoutered problems with
changes and/or API changes in this package.

# examples

Get information on the various bundles available from the service:

    > bundles = listBundles("http://data.enanomapper.net/")

Download the data on the substances:

    > substances = listSubstances("http://data.enanomapper.net/")
    > substanceFields = names(substances$substance)
    > substanceLabels = substances$substance["name"]

The next step is to access the physchem and bioassay data associated with the
nanomaterial:

    > info = substanceInfo("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
    > experiments = info$protocol

And the get the first measurement:

    > info$effects[[1]]

The structural information for the nanomaterials can be accessed in the
following manner, but it's important to realize that here we see some design
issues of the OpenTox API return, and the information we seek is expressed
as 'features'. Furthermore, the content returned is automatically converted
from the JSON returned by the service, and we need to extract too:

    > structures = substanceStructures(
        "http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a"
      )
    > features = as.vector(unlist(
        lapply(structures$feature, function(aFeature) { aFeature$title })
      ))

The listSubstances() method can also be use to do searches. For example, to list
all nanomaterials associated with a particular publication, you can use the
Digital Object Identifier (DOI) of the paper:

    > substances <- listSubstances(
        service="http://data.enanomapper.net/",
        search="10.1073/pnas.0802878105", type="citation"
      )

The list of types of searches currently supported include citation, type, and
owner_name. The list of owners you can retrieve is in this way:

    > owners = listSubstanceOwners("http://data.enanomapper.net/")
    > codes = owners$value

