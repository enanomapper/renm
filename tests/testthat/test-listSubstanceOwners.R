library(citeuliker)
context("SubstanceOwners")

test_that("substance owners are found", {
  bundles = listSubstanceOwners("http://data.enanomapper.net/")
  expect_that(nrow(data), not(equals(0)))
})
