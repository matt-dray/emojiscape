test_that("error on bad terrain", {

  expect_error(generate("x"))
  expect_error(generate(1))

  expect_error(get_set("x"))
  expect_error(get_set(1))

})

test_that("messages on bad grid_size", {

  terrain <- "ocean"

  expect_error(generate(terrain, -1))
  expect_warning(generate(terrain, 0.1))

})

test_that("data.frame returned with get_set()", {

  expect_identical(class(get_set("ocean")), "data.frame")
  expect_identical(length(get_set("ocean")), 4L)
  expect_identical(nrow(get_set("ocean")), 3L)

})
