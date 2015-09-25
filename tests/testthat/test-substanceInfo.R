library(citeuliker)
context("Substance Information")

test_that("substance info is found", {
  info = substanceInfo("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
  expect_that(nrow(info), not(equals(0)))
})
