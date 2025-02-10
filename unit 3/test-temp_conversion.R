library("testthat");
context("Temperature function testing")
source("temp_conversion.R")

test_that("Celsius to Fahrenheit correct", {
  expect_equal(C_to_F(0), 32)
  expect_equal(C_to_F(100), 212)
  expect_equal(C_to_F(-40), -40)
  expect_equal(C_to_F(37), 98.6, tolerance = 0.1)
})

test_that("Fahrenheit to Celsius correct", {
  expect_equal(F_to_C(32), 0)
  expect_equal(F_to_C(212), 100)
  expect_equal(F_to_C(-40), -40)
  expect_equal(F_to_C(98.6), 37, tolerance = 0.1)
})

# This test will fail
test_that("Fahrenheit to Celsius correct", {
  temp_F <- F_to_C(50)
  expect_equal(temp_F, 10)
})
