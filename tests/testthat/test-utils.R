test_that("get_emoji() works", {

  expect_identical(class(.get_emoji("ocean")), "list")
  expect_identical(class(.get_emoji("city")), "list")
  expect_identical(class(.get_emoji("desert")), "list")

  expect_identical(length(.get_emoji("ocean")), 3L)
  expect_identical(length(.get_emoji("city")), 3L)
  expect_identical(length(.get_emoji("desert")), 3L)

})

test_that(".get_sample() works", {

  emoji_set <- .get_emoji("ocean")

  mat_size <- 10
  prob_common <- 0.96
  prob_uncommon <- 0.03
  prob_rare <- 0.01

  emoji_sample <- .get_sample(
    emoji_set, mat_size, prob_common, prob_uncommon, prob_rare
  )

  expect_identical(class(emoji_sample), "character")
  expect_identical(length(emoji_sample), 100L)

})

test_that(".get_matrix() works", {

  emoji_set <- .get_emoji("ocean")

  mat_size <- 10
  prob_common <- 0.96
  prob_uncommon <- 0.03
  prob_rare <- 0.01

  emoji_sample <- .get_sample(
    emoji_set, mat_size, prob_common, prob_uncommon, prob_rare
  )

  emoji_matrix <- .get_matrix(emoji_sample, mat_size)

  expect_identical(class(emoji_matrix), c("matrix", "array"))
  expect_identical(length(emoji_matrix), 100L)

})
