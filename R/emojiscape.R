
#' Generate An Emoji Scene
#'
#' Print to the console a randomised scene composed of emoji.
#'
#' @param terrain Character. What type of locale?
#' @param size Numeric. Width of the emoji matrix.
#'
#' @return Class NULL. Matrix of emoji printed to the console line by line with
#'     cat().
#' @export
#'
#' @examples generate(terrain = "ocean")
generate <- function(terrain = c("ocean", "city", "desert"), size = 10) {

  if (terrain == "ocean") {

    e_terrain <- "water_wave"
    e_island <- "desert_island"
    e_vehicle <- "sailboat"
    e_creature <- "squid"

  } else if (terrain == "city") {

    e_terrain <- "office_building"
    e_island <- "department_store"
    e_vehicle <- "building_construction"
    e_creature <- "raccoon"

  } else if (terrain == "desert") {

    e_terrain <- "desert"
    e_island <- "cactus"
    e_vehicle <- "camel"
    e_creature <- "two_hump_camel"

  }

  p_common <- 0.93
  p_uncommon <- 0.03
  p_rare <- 0.01

  emoji_vector <- sample(
    x = c(
      emo::ji(e_terrain),
      emo::ji(e_island),
      emo::ji(e_vehicle),
      emo::ji(e_creature)
    ),
    prob = c(
      p_common,
      p_uncommon,
      p_rare,
      p_rare
    ),
    replace = TRUE,
    size = size * size
  )

  emoji_matrix <- matrix(
    data = emoji_vector,
    nrow = size,
    ncol = size
  )

  for (i in 1:nrow(emoji_matrix)) {
    cat(emoji_matrix[i, ], "\n")
  }

}
