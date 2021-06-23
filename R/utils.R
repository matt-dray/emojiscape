.get_emoji <- function(terrain) {

  if (terrain == "ocean") {

    list(
      emoji_common   = "water_wave",
      emoji_uncommon = "desert_island",
      emoji_rare     = "squid"
    )

  } else if (terrain == "city") {

    list(
      emoji_common   = "office_building",
      emoji_uncommon = "department_store",
      emoji_rare     = "raccoon"
    )

  } else if (terrain == "desert") {

    list(
      emoji_common   = "desert",
      emoji_uncommon = "cactus",
      emoji_rare     = "camel"
    )

  }

}

.get_sample <- function(
  emoji_set,
  size,
  prob_common,
  prob_uncommon,
  prob_rare) {

  sample(
    x = c(
      emo::ji(emoji_set$emoji_common),
      emo::ji(emoji_set$emoji_uncommon),
      emo::ji(emoji_set$emoji_rare)
    ),
    prob = c(
      prob_common,
      prob_uncommon,
      prob_rare
    ),
    replace = TRUE,
    size = size * size
  )

}

.get_matrix <- function(emoji_sample, mat_size) {

  matrix(
    data = emoji_sample,
    nrow = mat_size,
    ncol = mat_size
  )

}
