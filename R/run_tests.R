library(testthat)

test_results <- test_dir("R/tests/testhat", reporter = "summary")

print(test_results)
