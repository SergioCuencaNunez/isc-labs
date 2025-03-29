library(testthat)
source('number_utility.R')

context("number_utility Tests")

test_that("get_abs_difference returns correct absolute difference", {
  expect_equal(get_abs_difference(10, 3), 7)
  expect_equal(get_abs_difference(3, 10), 7)
  expect_equal(get_abs_difference(-5, -2), 3)
  expect_equal(get_abs_difference(4.5, 1.5), 3)
})

test_that("get_abs_difference handles non-numeric inputs", {
  expect_error(get_abs_difference("a", 3), "Parameter a must be numeric")
  expect_error(get_abs_difference(10, "b"), "Parameter b must be numeric")
})

test_that("inverse_abs_difference returns correct inverse", {
  expect_equal(inverse_abs_difference(10, 5), 1/5)
  expect_equal(inverse_abs_difference(5, 10), 1/5)
  expect_equal(inverse_abs_difference(20, 18), 1/2)
})

test_that("inverse_abs_difference handles division by zero", {
  expect_error(inverse_abs_difference(5, 5), "abs_difference != 0")
})

test_that("inverse_abs_difference handles non-numeric inputs", {
  expect_error(inverse_abs_difference("x", 2), "Parameter a must be numeric")
  expect_error(inverse_abs_difference(7, "y"), "Parameter b must be numeric")
})

test_that("get_abs_product returns correct absolute product", {
  expect_equal(get_abs_product(3, 4), 12)
  expect_equal(get_abs_product(-3, 4), 12)
  expect_equal(get_abs_product(-3, -4), 12)
  expect_equal(get_abs_product(1.5, 2), 3)
})

test_that("get_abs_product handles non-numeric inputs", {
  expect_error(get_abs_product("m", 3), "Parameter a must be numeric")
  expect_error(get_abs_product(7, "n"), "Parameter b must be numeric")
})
