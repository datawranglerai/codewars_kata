library(testthat)

context("Kata: howmuch")

source("../../howmuch.R")

dotest <- function(m, n, expected) {
        actual <- howmuch(m, n)
        expect_equal(actual, expected)
}

test_that("tests howmuch", {
        dotest(1, 100, "[[M: 37 B: 5 C: 4][M: 100 B: 14 C: 11]]")
        dotest(1000, 1100, "[[M: 1045 B: 149 C: 116]]")
        dotest(2950, 2950, "[]")
})
