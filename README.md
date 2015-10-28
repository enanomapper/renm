# renm

R Client library for the eNanoMapper API (http://enanomapper.net/) (license: MIT).

# install

    > install.packages(c("curl", "plyr", "jsonlite")) # dependencies
    > install.packages("testthat") # if you want to test the package
    > install.packages("devtools") # to install from GitHub
    > library(devtools)
    > install_github("enanomapper/renm", subdir="renm")

# examples

    > bundles = listBundles("http://data.enanomapper.net/")
    > substances = listSubstances("http://data.enanomapper.net/")
    > info = substanceInfo("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
    > structures = substanceStructures("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
