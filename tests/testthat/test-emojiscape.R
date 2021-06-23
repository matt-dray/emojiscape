test_that("error on bad terrain", {

  expect_error(generate("x"))
  expect_error(generate(1))

})

test_that("error on bad mat_size", {

  terrain <- "ocean"
  expect_error(generate(terrain, -1))
  expect_error(generate(terrain, 1.1))

})

test_that("error on bad prob range", {

  terrain <- "ocean"
  p_lo <- -1
  p_hi <- 1.1
  expect_error(generate(terrain, prob_common = p_lo))
  expect_error(generate(terrain, prob_uncommon = p_lo))
  expect_error(generate(terrain, prob_rare = p_lo))
  expect_error(generate(terrain, prob_common = p_hi))
  expect_error(generate(terrain, prob_uncommon = p_hi))
  expect_error(generate(terrain, prob_rare = p_hi))

})

test_that("error on bad prob sum", {

  terrain <- "ocean"
  expect_error(
    generate(terrain, prob_common = 1, prob_uncommon = 1, prob_rare = 1)
  )

})
