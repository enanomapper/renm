library(citeuliker)
context("Bundles")

test_that("bundles are found", {
  bundles = listBundles("http://data.enanomapper.net/")
  expect_that(nrow(data), not(equals(0)))
})
