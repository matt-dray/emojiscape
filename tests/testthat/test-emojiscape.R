test_that("error on bad terrain", {

  expect_error(generate("x"))
  expect_error(generate(1))

})

test_that("messages on bad mat_size", {

  terrain <- "ocean"

  expect_error(generate(terrain, -1))
  expect_warning(generate(terrain, 0.1))

})

