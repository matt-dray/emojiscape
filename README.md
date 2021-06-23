
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {emojiscape}

<!-- badges: start -->

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
<!-- badges: end -->

The goal of {emojiscape} is whimsy.

It prints to the console a randomised scene composed of emoji. Each
terrain type has three emoji that are sampled with provided
probabilities (common, uncommon and rare).

Install {emojiscape} from GitHub. Requires [the GitHub-hosted {emo}
package](https://github.com/hadley/emo).

``` r
remotes::install_github("matt-dray/emojiscape")
```

Then `generate()` a scene.

Here’s an `ocean`.

``` r
emojiscape::generate(terrain = "ocean")
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🏝 🦑 🌊 🌊 🌊 🏝 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🏝 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🏝 🌊 🌊 🌊 🌊 🏝 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🦑 🌊 🌊 🌊 🏝 🌊 🌊 🌊 🌊 🌊 
```

Here’s a `city`.

``` r
emojiscape::generate(terrain = "city")
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🦝 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏬 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏬 🏬 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
```

Here’s a `desert`.

``` r
emojiscape::generate(terrain = "desert")
🏜 🌵 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🌵 🏜 🌵 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🌵 🏜 🏜 🌵 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
```
