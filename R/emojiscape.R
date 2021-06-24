
#' Generate An Emoji Scene
#'
#' Print to the console a randomised scene composed of emoji, given a specific
#' terrain type.
#'
#' @param terrain Character. What type of locale? See 'details' below for
#'     options.
#' @param mat_size Numeric, greater than zero. Width and length of the emoji
#'     matrix.
#' @param prob_common Numeric. Probability of occurrence for the
#'     'common' emoji in the terrain set.
#' @param prob_uncommon Numeric. Probability of occurrence for the
#'     'uncommon' emoji in the terrain set.
#' @param prob_rare Numeric. Probability of occurrence for the
#'     'rare' emoji in the terrain set.
#'
#' @details
#' Your terrain choice results in the selection of a predetermined three-
#' emoji set, from which a sample is taken to fill a square matrix with
#' dimensions of mat_size.
#'
#' Currently, terrain options are "arable", "city",
#' "desert", "forest", "garden", "mountains", "ocean", "pastoral", "traffic"
#' and "woods".
#'
#' The prob_* arguments are passed to sample() and are relative
#' to each other.
#'
#' @return Class NULL. Matrix of emoji printed to the console line by line with
#'     cat().
#'
#' @export
#'
#' @examples generate("ocean")
generate <- function(
  terrain = c("arable", "city", "desert", "forest", "garden", "mountains",
              "ocean", "pastoral", "traffic", "woods"),
  mat_size = 10,
  prob_common = 0.75,
  prob_uncommon = 0.2,
  prob_rare = 0.05) {

  terrain_set <- c(
    "arable", "city", "desert", "forest", "garden", "mountains", "ocean",
    "pastoral", "traffic", "woods"
  )

  if (
    length(terrain) > 1 |
    !terrain %in% terrain_set |
    !is.character("terrain")) {
    stop(
      "Argument 'terrain' must be on of those listed in ?generate."
    )
  }

  if (mat_size <= 0) {
    stop("Argument mat_size must be larger than 0.")
  }

  if (mat_size %% 1 != 0) {
    warning("Argument 'mat_size' will be forced to nearest ceiling value.")
    mat_size <- ceiling(mat_size)
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
