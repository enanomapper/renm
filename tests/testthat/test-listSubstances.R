library(citeuliker)
context("Substances")

test_that("substances are found", {
  substances = listSubstances("http://data.enanomapper.net/")
  expect_that(nrow(substances), not(equals(0)))
})
