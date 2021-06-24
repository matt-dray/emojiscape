
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {emojiscape}

<!-- badges: start -->

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
<!-- badges: end -->

{emojiscape} is a tiny R package that prints to the console a randomised
emoji scene. Choose a terrain and three emoji of that theme will be
sampled with different probabilities and rendered to a grid size of your
choosing.

## Install

Install {emojiscape} from GitHub. It requires [the GitHub-hosted {emo}
package](https://github.com/hadley/emo), which is built on
[emojilib](https://github.com/muan/emojilib/).

``` r
remotes::install_github("matt-dray/emojiscape")
```

No guarantees. I’ve tested it only on my own macOS machine.

## Build a tiny world

Let’s `generate()` a scene. There are several `terrain` options to try
(yes, there is `liminal`).

``` 
 [1] "arable"    "city"      "desert"    "forest"    "garden"    "liminal"  
 [7] "mountains" "ocean"     "pastoral"  "sky"       "space"     "traffic"  
[13] "woods"    
```

Here’s some `woods`. What a *hoot*.

``` r
emojiscape::generate(terrain = "woods")
🌳 🦉 🍂 🍂 🌳 🦉 🍂 🌳 🦉 🍂 
🌳 🦉 🌳 🌳 🍂 🌳 🌳 🍂 🍂 🌳 
🌳 🍂 🌳 🌳 🌳 🌳 🍂 🌳 🌳 🌳 
🌳 🌳 🌳 🌳 🌳 🌳 🍂 🌳 🌳 🌳 
🌳 🦉 🌳 🍂 🌳 🍂 🌳 🌳 🌳 🌳 
🌳 🌳 🦉 🌳 🌳 🌳 🌳 🌳 🍂 🌳 
🍂 🦉 🍂 🦉 🌳 🌳 🦉 🌳 🌳 🌳 
🌳 🍂 🍂 🌳 🌳 🌳 🌳 🌳 🌳 🌳 
🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 
🌳 🌳 🦉 🌳 🌳 🌳 🌳 🌳 🍂 🦉 
```

Hold your breath, we’re going to `space`. You can resize the output, but
space is basically infinite and my console is not.

``` r
emojiscape::generate("space", grid_size = 7)
⬛ ⬛ ⬛ ⬛ ⬛ ⬛ ⬛ 
⭐ ⬛ ⬛ ⬛ ⭐ ⬛ ⬛ 
⭐ ⭐ ⬛ ⭐ ⬛ ⬛ ⬛ 
⬛ ⬛ ⭐ ⬛ ⭐ ⬛ ⬛ 
⬛ ⬛ ⬛ ⬛ ⬛ ⬛ ⬛ 
⬛ ⬛ ⬛ ⭐ 🛰 ⬛ ⬛ 
⬛ ⬛ ⭐ ⭐ ⬛ ⬛ ⭐ 
```

Here’s a little raccoon `city`. Perhaps the *residents* are *evil*?
(That is a gamer joke, gg.)

``` r
emojiscape::generate("city", 5)
🏬 🏢 🏢 🏢 🏢 
🏢 🏬 🏬 🏢 🏢 
🏢 🏢 🏬 🏢 🏢 
🏢 🏢 🏢 🏬 🏢 
🏢 🏢 🦝 🏢 🏢 
```

## Tune the frequencies

Use `get_set()` to see each terrain’s emoji set and their ‘suggested
frequency’ slot.

``` r
emojiscape::get_set("mountains")
    terrain     freq                 name      emoji
1 mountains   common             mountain     \u26f0
2 mountains uncommon snow_capped_mountain \U0001f3d4️
3 mountains     rare                 goat \U0001f410
```

But you can totally mess with the probablities for these in
`generate()`.

Any *The Mountain Goats* fans?

``` r
emojiscape::generate(
  "mountains",
  prob_common = 0.1,
  prob_uncommon = 0.2,
  prob_rare = 0.7  # INCREASE GOAT FREQUENCY
)
🐐 🐐 🐐 🐐 ⛰ 🐐 🐐 🐐 🐐 ⛰ 
🏔️ 🐐 🐐 🐐 🐐 🏔️ 🐐 🐐 🐐 🐐 
🐐 🐐 🐐 🐐 🐐 🏔️ 🐐 ⛰ 🐐 🏔️ 
🐐 🏔️ 🏔️ 🐐 🐐 🐐 🏔️ 🐐 🐐 ⛰ 
🏔️ 🐐 🐐 🏔️ 🐐 🐐 🐐 🐐 🐐 🐐 
🏔️ 🏔️ 🐐 🐐 🐐 🐐 🐐 ⛰ 🐐 🐐 
⛰ 🐐 🐐 🐐 ⛰ 🐐 ⛰ 🏔️ 🐐 🐐 
🐐 🐐 🐐 🐐 🐐 🐐 🐐 🐐 🐐 ⛰ 
🐐 🐐 🐐 🏔️ 🐐 🐐 🐐 🏔️ 🏔️ 🐐 
🐐 🐐 ⛰ 🏔️ 🐐 🐐 🐐 🐐 🐐 ⛰ 
```
