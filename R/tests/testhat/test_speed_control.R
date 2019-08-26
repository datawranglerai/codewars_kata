library(testthat)

context("Kata: Speed Control")

source("../../speed_control.R")

testing <- function(s, x, expect) {
        cat("s: ", s, "\n")
        dput(x)
        actual <- gps(s, x)
        cat("actual ", actual, "\n")
        cat("expect ", expect, "\n")
        expect_equal(actual, expect)
}

test_that("test gps", {
        x <- c(0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61)
        s <- 20
        u <- 41
        testing(s, x, u)
        x <- c(0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25)
        s <- 12
        u <- 219
        testing(s, x, u)
        
})


