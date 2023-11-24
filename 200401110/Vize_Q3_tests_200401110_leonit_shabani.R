library(testthat)
rm(list = ls())
source("Vize_Q3_200401110_leonit_shabani.R")

# Q 3-1
test_that("Global Workspace’de my_artists adlı bir değişken olmalı", {
  expect_true(exists("my_artists"))
})

# Q 3-2
test_that("my_artists adlı değişkenin class’ı “data.frame” olmalı", {
  expect_true(is.data.frame(my_artists))
})

# Q 3-3
test_that("my_artists adlı değişken 2 sütun bulundurmalı", {
  expect_true(ncol(my_artists) == 2)
})

# Q 3-4
test_that("my_artists adlı değişken sütun isimleri c(“artist”, “id”) olmalı", {
  expect_identical(names(my_artists) == c("artist", "id"), c(T,T))
})