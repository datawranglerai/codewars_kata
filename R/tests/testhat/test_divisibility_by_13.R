library(testthat)

context("Kata: A Rule of Divisibility by 13")

source("../../divisibility_by_13.R")

testequal <- function(n, expected) {
        actual <- thirt(n)
        expect_equal(actual, expected)
}

test_that("tests thirt", {
        testequal(8529, 79)
        testequal(85299258, 31)
})
