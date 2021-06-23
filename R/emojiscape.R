
#' Generate An Emoji Scene
#'
#' Print to the console a randomised scene composed of emoji.
#'
#' @param terrain Character. What type of locale? Currently limited to ocean,
#'     city or desert.
#' @param mat_size Integer greater than zero. Width and length of the emoji matrix.
#' @param prob_common Numeric, bound 0 to 1. Probability of occurrence for the
#'     'common' emoji in the terrain set.
#' @param prob_uncommon Numeric, bound 0 to 1. Probability of occurrence for the
#'     'uncommon' emoji in the terrain set.
#' @param prob_rare Numeric, bound 0 to 1. Probability of occurrence for the
#'     rarest emoji in the terrain set.
#'
#' @details
#'     Your terrain choice results in the selection of a predetermined three-
#'     emoji set, from which a sample is taken to fill a square matrix with
#'     dimensions of mat_size. The prob_* arguments must sum to 1.
#'
#' @return Class NULL. Matrix of emoji printed to the console line by line with
#'     cat().
#' @export
#'
#' @examples generate(terrain = "ocean")
generate <- function(
  terrain = c("ocean", "city", "desert"),
  mat_size = 10L,
  prob_common = 0.96,
  prob_uncommon = 0.03,
  prob_rare = 0.01) {

  if (!terrain %in% c("ocean", "city", "desert") | !is.character("terrain")) {
    stop('Argument terrain must be "ocean", "city"" or "desert".')
  }

  if (!is.integer(mat_size) | mat_size <= 0) {
    stop("Argument mat_size must be an integer.")
  }

  if (
    sum(prob_common, prob_uncommon, prob_rare) != 1 |
    prob_common < 0 | prob_uncommon < 0 | prob_rare < 0 |
    prob_common > 1 | prob_uncommon > 1 | prob_rare > 1
  ) {
    stop("The prob_* arguments must be bound from 0 to 1 and sum to 1.")
  }

  emoji_set <- .get_emoji(terrain)

  emoji_sample <- .get_sample(
    emoji_set,
    mat_size,
    prob_common,
    prob_uncommon,
    prob_rare
  )

  emoji_matrix <- .get_matrix(emoji_sample, mat_size)

  for (i in 1:nrow(emoji_matrix)) {
    cat(emoji_matrix[i, ], "\n")
  }

}
