.get_emoji <- function(terrain) {

  if (terrain == "arable") {

    list(
      emoji_common   = "ear_of_corn",
      emoji_uncommon = "tractor",
      emoji_rare     = "mouse"
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

  } else if (terrain == "forest") {

    list(
      emoji_common   = "evergreen_tree",
      emoji_uncommon = "squirrel",
      emoji_rare     = "christmas_tree"
    )

  } else if (terrain == "garden") {

    list(
      emoji_common   = "rose",
      emoji_uncommon = "seedling",
      emoji_rare     = "wilted_flower"
    )

  } else if (terrain == "mountains") {

    list(
      emoji_common   = "mountain",
      emoji_uncommon = "snow_capped_mountain",
      emoji_rare     = "goat"
    )

  } else if (terrain == "ocean") {

    list(
      emoji_common   = "water_wave",
      emoji_uncommon = "desert_island",
      emoji_rare     = "squid"
    )

  } else if (terrain == "pastoral") {

    list(
      emoji_common   = "rooster",
      emoji_uncommon = "egg",
      emoji_rare     = "hatching_chick"
    )

  } else if (terrain == "traffic") {

    list(
      emoji_common   = "automobile",
      emoji_uncommon = "taxi",
      emoji_rare     = "truck"
    )

  } else if (terrain == "woods") {

    list(
      emoji_common   = "deciduous_tree",
      emoji_uncommon = "fallen_leaf",
      emoji_rare     = "owl"
    )

  }

}

.get_sample <- function(
  emoji_set,
  mat_size,
  prob_common,
  prob_uncommon,
  prob_rare) {

  mat_size <- as.integer(mat_size)

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
    size = mat_size * mat_size
  )

}

.get_matrix <- function(emoji_sample, mat_size) {

  matrix(
    data = emoji_sample,
    nrow = mat_size,
    ncol = mat_size
  )

}
