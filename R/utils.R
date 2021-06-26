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

  } else if (terrain == "liminal") {

    list(
      emoji_common   = "white_large_square",
      emoji_uncommon = "door",
      emoji_rare     = "light_bulb"
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
      emoji_rare     = "dolphin"
    )

  } else if (terrain == "pastoral") {

    list(
      emoji_common   = "rooster",
      emoji_uncommon = "egg",
      emoji_rare     = "hatching_chick"
    )

  } else if (terrain == "polar") {

    list(
      emoji_common   = "cloud_with_snow",
      emoji_uncommon = "snowflake",
      emoji_rare     = "penguin"
    )

  } else if (terrain == "rainforest") {

    list(
      emoji_common   = "deciduous_tree",
      emoji_uncommon = "snake",
      emoji_rare     = "gorilla"
    )

  } else if (terrain == "sky") {

    list(
      emoji_common   = "cloud_with_rain",
      emoji_uncommon = "rainbow",
      emoji_rare     = "airplane"
    )

  } else if (terrain == "space") {

    list(
      emoji_common   = "black_large_square",
      emoji_uncommon = "star",
      emoji_rare     = "orbit"
    )

  } else if (terrain == "suburbs") {

    list(
      emoji_common   = "deciduous_tree",
      emoji_uncommon = "house_with_garden",
      emoji_rare     = "person_biking"
    )

  } else if (terrain == "traffic") {

    list(
      emoji_common   = "automobile",
      emoji_uncommon = "taxi",
      emoji_rare     = "truck"
    )

  } else if (terrain == "undergrowth") {

    list(
      emoji_common   = "fallen_leaf",
      emoji_uncommon = "ant",
      emoji_rare     = "mushroom"
    )

  } else if (terrain == "woods") {

    list(
      emoji_common   = "deciduous_tree",
      emoji_uncommon = "fallen_leaf",
      emoji_rare     = "chipmunk"
    )

  }

}

.get_sample <- function(
  emoji_set,
  grid_size,
  prob_common,
  prob_uncommon,
  prob_rare) {

  grid_size <- as.integer(grid_size)

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
    size = grid_size * grid_size
  )

}

.get_matrix <- function(emoji_sample, grid_size) {

  matrix(
    data = emoji_sample,
    nrow = grid_size,
    ncol = grid_size
  )

}
