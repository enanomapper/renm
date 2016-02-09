[![Build Status](https://travis-ci.org/enanomapper/renm.svg?branch=master)](https://travis-ci.org/enanomapper/renm)

# renm

R Client library for the eNanoMapper API (http://enanomapper.net/) (license: MIT).
The API is extensively described in the paper by [Jealizkova et al. in the BJON](http://dx.doi.org/10.3762/bjnano.6.165).

# install

    > install.packages(c("curl", "plyr", "jsonlite")) # dependencies
    > install.packages("testthat") # if you want to test the package
    > install.packages("devtools") # to install from GitHub
    > library(devtools)
    > install_github("enanomapper/renm")

# examples

    > bundles = listBundles("http://data.enanomapper.net/")
    > substances = listSubstances("http://data.enanomapper.net/")
    > info = substanceInfo("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
    > structures = substanceStructures(
        "http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a"
      )
    > substances <- listSubstances(
        service="http://data.enanomapper.net/",
        search="10.1073/pnas.0802878105", type="citation"
      )
