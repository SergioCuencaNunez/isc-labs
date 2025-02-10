library("testthat");
context("My Awesome Function testing")
source("my_awesome_function.R")

test_that("Erroneous data types", {
  expect_error(my_awesome_function("a", "Positive", 3), "Both 'a' and 'c' must be numeric")
  expect_error(my_awesome_function(2, "Unknown", 3), "'b' must be either 'Positive' or 'Negative'")
  expect_error(my_awesome_function(2, "Positive", "c"), "Both 'a' and 'c' must be numeric")
})

test_that("Vectorized inputs", {
  result <- my_awesome_function(c(1, 2, 3), "Positive", c(4, 5, 6))
  expect_equal(result, c(5, 7, 9))
  
  result_neg <- my_awesome_function(c(10, 20, 30), "Negative", c(3, 5, 7))
  expect_equal(result_neg, c(7, 15, 23))
})

test_that("Returns numeric results", {
  expect_true(is.numeric(my_awesome_function(5, "Positive", 3)))
  expect_true(is.numeric(my_awesome_function(10, "Negative", 2)))
})
