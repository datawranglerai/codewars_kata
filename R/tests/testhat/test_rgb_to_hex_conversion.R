library(testthat)

context("Kata: RGB to Hex Conversion")

source("../../rgb_to_hex_conversion.R")

test_that("Example Tests", {
        expect_equal(rgb(0, 0, 0),"000000")
        expect_equal(rgb(1, 2, 3),"010203")
        expect_equal(rgb(255, 255, 255), "FFFFFF")
        expect_equal(rgb(254, 253, 252), "FEFDFC")
        expect_equal(rgb(-20, 275, 125), "00FF7D")
        expect_equal(rgb(203, 222, 14), "CBDE0E")
})
