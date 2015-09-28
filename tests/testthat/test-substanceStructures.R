library(citeuliker)
context("Substance Structures")

test_that("substance structures are found", {
  info = substanceStructures("http://data.enanomapper.net/substance/NWKI-71060af4-1613-35cf-95ee-2a039be0388a")
  expect_that(nrow(info), not(equals(0)))
})
