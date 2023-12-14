library(testthat)
rm(list = ls())
source("Vize_Q2_200401110_leonit_shabani.R")

result <- spotify_search_artist("Imagine Dragons")

# Q 2-1
test_that("Global Workspace’de spotify_search_artist adlı bir değişken olmalı.", {
  expect_true(exists("spotify_search_artist"))
})

# Q 2-2
test_that("spotify_search_artist adlı değişkenin tipi “function” olmalı.", {
  expect_true(is.function(spotify_search_artist))
})

# Q 2-3
test_that("spotify_search_artist() herhangi bir artist ismi ile çağrıldığında döndürdüğü çıktı bir liste olmalı.", {
  expect_true(typeof(result) == "list")
})

# Q 2-4
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin iki elementi olmalı", {
  expect_true(length(result) == 2)
})

# Q 2-5
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ilk elementinin ismi status_code olmalı", {
  expect_true(names(result)[1] == "status_code")
})

# Q 2-6
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ilk elementinin class’ı numeric olmalı", {
  expect_true(is.numeric(result[[1]]))
})

# Q 2-7
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin status_code adlı elementinin değeri 200’e eşit olmalı", {
  expect_true(result[[1]] == 200)
})

# Q 2-8
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ikinci elementinin ismi search_results olmalı", {
  expect_true(names(result)[2] == "search_results")
})

# Q 2-9
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ikinci elementinin class’ı data.frame olmalı", {
  expect_true(is.data.frame(result[[2]]))
})

# Q 2-10
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ikinci elementinin iki sütun barındırmalı", {
  expect_true(ncol(result[[2]]) == 2)
})

# Q 2-11
test_that("spotify_search_artist() çağrıldığında döndürdüğü listenin ikinci elementinin sütun isimleri c(“artist”, “id”) olmalı", {
  expect_identical(names(result[[2]]) == c("artist", "id"), c(T,T))
})

# Q 2-12
test_that("spotify_search_artist(\"The Doors\") çağrıldığında döndürdüğü listenin ikinci elementinin birinci satırının \"id\" adlı sütunu \"22WZ7M8sxp5THdruNY3gXt\" olmalı", {
  result2 <- spotify_search_artist("The Doors")
  expect_true(result2$search_results$id[1] == "22WZ7M8sxp5THdruNY3gXt")
})



