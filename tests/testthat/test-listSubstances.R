library(citeuliker)
context("Substances")

test_that("substances are found", {
  bundles = listSubstances("http://data.enanomapper.net/")
  expect_that(nrow(data), not(equals(0)))
})
