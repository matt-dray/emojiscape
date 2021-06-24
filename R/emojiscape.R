
#' Generate An Emoji Scene
#'
#' Print to the console a randomised scene composed of emoji, given a specific
#' terrain type.
#'
#' @param terrain Character. What type of locale? See 'details' below for
#'     options.
#' @param grid_size Numeric, greater than zero. Width and length of the emoji
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
#' dimensions of grid_size.
#'
#' Currently, terrain options are "arable", "city",
#' "desert", "forest", "garden", "liminal", "mountains", "ocean", "pastoral",
#' "space", "space", "traffic" and "woods".
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
  terrain = c("arable", "city", "desert", "forest", "garden", "liminal",
              "mountains", "ocean", "pastoral", "sky", "space", "traffic",
              "woods"),
  grid_size = 10,
  prob_common = 0.75,
  prob_uncommon = 0.2,
  prob_rare = 0.05) {

  terrain_set <- c(
    "arable", "city", "desert", "forest", "garden", "liminal",
    "mountains", "ocean", "pastoral", "sky", "space", "traffic",
    "woods"
  )

  if (
    length(terrain) > 1 |
    !terrain %in% terrain_set |
    !is.character("terrain")) {
    stop(
      "Argument 'terrain' must be one of those listed in the details of ?generate."
    )
  }

  if (grid_size <= 0) {
    stop("Argument grid_size must be larger than 0.")
  }

  if (grid_size %% 1 != 0) {
    warning("Argument 'grid_size' will be forced to nearest ceiling value.")
    grid_size <- ceiling(grid_size)
  }

  emoji_set <- .get_emoji(terrain)

  emoji_sample <- .get_sample(
    emoji_set,
    grid_size,
    prob_common,
    prob_uncommon,
    prob_rare
  )

  emoji_matrix <- .get_matrix(emoji_sample, grid_size)

  for (i in 1:nrow(emoji_matrix)) {
    cat(emoji_matrix[i, ], "\n")
  }

}


#' See Emoji In Each Terrain
#'
#' Print a dataframe with the emoji that are found in the name terrain and their
#' probability slot.
#'
#' @param terrain Character. What type of locale? See 'details' below for
#'     options.
#'
#' @details
#' Currently, terrain options are "arable", "city",
#' "desert", "forest", "garden", "liminal", "mountains", "ocean", "pastoral",
#' "space", "space", "traffic" and "woods".
#'
#' @return A data.frame of 4 columns and 3 rows.
#'
#' @export
#'
#' @examples get_set("space")
get_set <- function(terrain) {

  terrain_set <- c(
    "arable", "city", "desert", "forest", "garden", "liminal",
    "mountains", "ocean", "pastoral", "sky", "space", "traffic",
    "woods"
  )

  if (
    length(terrain) > 1 |
    !terrain %in% terrain_set |
    !is.character("terrain")) {
    stop(
      "Argument 'terrain' must be one of those listed in the details of ?generate."
    )
  }

  x <- .get_emoji(terrain)

  data.frame(
    terrain = terrain,
    freq = c("common", "uncommon", "rare"),
    name = c(
      x$emoji_common,
      x$emoji_uncommon,
      x$emoji_rare
    ),
    emoji = c(
      emo::ji(x$emoji_common),
      emo::ji(x$emoji_uncommon),
      emo::ji(x$emoji_rare)
    )
  )

}
