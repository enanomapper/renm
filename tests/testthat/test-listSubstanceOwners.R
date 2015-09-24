library(citeuliker)
context("SubstanceOwners")

test_that("substance owners are found", {
  owners = listSubstanceOwners("http://data.enanomapper.net/")
  expect_that(nrow(owners), not(equals(0)))
})
