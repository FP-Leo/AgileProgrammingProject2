library(testthat)

rm(list = ls())

source("Vize_Q1_200401110_leonit_shabani.R")

result <- spotify_token()

# Q 1-1
test_that("Global Workspace’de spotify_token adlı bir değişken olmalı.", {
  expect_true(exists("spotify_token"))
})

# Q 1-2
test_that("spotify_token adlı değişkenin tipi “function” olmalı.", {
  expect_true(is.function(spotify_token))
})

# Q 1-3
test_that("spotify_token() çağrıldığında döndürdüğü çıktı bir liste olmalı", {
  expect_true(typeof(result) == "list")
})

# Q 1-4
test_that("spotify_token() çağrıldığında döndürdüğü listenin iki elementi olmalı", {
  expect_true(length(result) == 2)
})

# Q 1-5
test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elementinin ismi status_code olmalı", {
  expect_true(names(result)[1]=="status_code")
})


# Q 1-6
test_that("spotify_token() çağrıldığında döndürdüğü listenin ilk elementinin class’ı numeric olmalı", {
  expect_true(is.numeric(result[[1]]))
})

# Q 1-7
test_that("spotify_token() çağrıldığında döndürdüğü listenin status_code adlı elementinin değeri 200’e eşit olmalı
", {
  expect_true(result$status_code == 200)
})

# Q 1-8
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin ismi token olmalı", {
  expect_true(names(result)[2]=="token")
})

# Q 1-9
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin class’ı character olmalı", {
  expect_true(is.character(result[[2]]))
})

# Q 1-10
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementinin class’ı character olmalı", {
  expect_true(grepl("^Bearer ",result[[2]]))
})

# Q 1-11
test_that("spotify_token() çağrıldığında döndürdüğü listenin ikinci elementi character değişkeninin içinde 122 adet harf bulunmalı", {
  expect_true(nchar(result[[2]]) == 122)
})
