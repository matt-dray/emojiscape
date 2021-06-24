
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {emojiscape}

<!-- badges: start -->

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
<!-- badges: end -->

The goal of the {emojiscape} R package is pointless whimsy.

It prints to the console a randomised scene composed of emoji. Each
terrain type has three emoji that are sampled with provided
probabilities (common, uncommon and rare). Maybe I’ll let you create
your own emoji sets one day, but you have to earn it.

Install {emojiscape} from GitHub. Requires [the GitHub-hosted {emo}
package](https://github.com/hadley/emo), which is built on
[emojilib](https://github.com/muan/emojilib/).

``` r
remotes::install_github("matt-dray/emojiscape")
```

Then `generate()` a scene.

Here’s some `woods`. What a *hoot*.

``` r
emojiscape::generate(terrain = "woods")
🌳 🌳 🍂 🌳 🍂 🌳 🍂 🌳 🌳 🌳 
🌳 🌳 🌳 🌳 🌳 🍂 🌳 🍂 🌳 🌳 
🌳 🌳 🌳 🌳 🍂 🌳 🌳 🌳 🌳 🌳 
🍂 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🍂 
🌳 🍂 🌳 🍂 🌳 🌳 🌳 🌳 🍂 🍂 
🍂 🌳 🌳 🌳 🍂 🌳 🌳 🍂 🌳 🍂 
🍂 🌳 🌳 🍂 🌳 🌳 🌳 🍂 🌳 🌳 
🌳 🦉 🌳 🌳 🌳 🌳 🍂 🌳 🌳 🌳 
🌳 🌳 🍂 🌳 🌳 🌳 🌳 🍂 🌳 🍂 
🌳 🍂 🌳 🌳 🌳 🌳 🍂 🦉 🌳 🌳 
```

Here’s a little raccoon `city`. Perhaps the *residents* are *evil*?
(That is a gamer joke, gg.)

``` r
emojiscape::generate("city", mat_size = 5)
🏢 🏢 🦝 🏢 🦝 
🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 
🦝 🏬 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏬 
```

Here’s a `pastoral` poultry farm. There are only roosters; we do not
know where the eggs come from.

``` r
emojiscape::generate("pastoral", 7)
🐓 🐓 🐓 🐓 🐓 🐓 🐓 
🐓 🐓 🐓 🐓 🐓 🥚 🐓 
🐓 🥚 🐓 🐓 🐓 🐓 🐓 
🐓 🐓 🐓 🥚 🐓 🥚 🐓 
🐓 🐓 🐓 🐓 🐓 🥚 🥚 
🐓 🐓 🐓 🐓 🐓 🐓 🥚 
🐓 🐣 🐓 🐓 🐓 🐓 🐓 
```

There are several other `terrain` options to try; see `?generate`.

You can also mess with the emoji probabilities.

Any *The Mountain Goats* fans?

``` r
emojiscape::generate(
  "mountains",
  prob_common = 0.1,
  prob_uncommon = 0.2,
  prob_rare = 0.7
)
🐐 🏔️ 🐐 🐐 🏔️ ⛰ 🐐 🐐 🐐 🏔️ 
🏔️ 🐐 🐐 🐐 🐐 🐐 🐐 🐐 🐐 🐐 
🐐 🏔️ 🐐 🐐 🐐 🐐 🐐 🐐 🐐 🐐 
🏔️ 🏔️ 🏔️ 🐐 ⛰ 🐐 🐐 🐐 🐐 🏔️ 
🐐 ⛰ 🐐 🐐 ⛰ 🐐 🐐 🐐 🐐 🐐 
⛰ 🐐 🏔️ 🏔️ 🐐 🏔️ 🐐 ⛰ ⛰ 🐐 
🐐 🏔️ 🐐 ⛰ 🐐 🐐 🐐 🏔️ 🐐 🐐 
🐐 🐐 🐐 🐐 🐐 🐐 🐐 ⛰ 🐐 🐐 
🏔️ 🐐 🐐 🏔️ 🐐 🐐 ⛰ 🐐 🐐 🐐 
🐐 ⛰ 🐐 ⛰ 🐐 🐐 🐐 🐐 🏔️ 🐐 
```

How did I know which emoji were common, uncommon or rare for this
terrain? (I should probably export this function, eh?)

``` r
emojiscape:::.get_emoji("mountains")
$emoji_common
[1] "mountain"

$emoji_uncommon
[1] "snow_capped_mountain"

$emoji_rare
[1] "goat"
```
