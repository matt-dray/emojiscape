
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {emojiscape}

<!-- badges: start -->
<!-- badges: end -->

The goal of {emojiscape} is whimsy.

It prints to the console a randomised scene composed of emoji.

Install {emojiscape} from GitHub. Requires the GitHub-hosted {emo}
package.

``` r
remotes::install_github("matt-dray/emojiscape")
```

Then `generate()` a scene. Here’s an `ocean`.

``` r
emojiscape::generate(terrain = "ocean")
🌊 🌊 🌊 🌊 🏝 🌊 🌊 🏝 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🌊 🌊 🌊 ⛵ 🌊 🌊 
🌊 🌊 🌊 🌊 🏝 🌊 🌊 🌊 🏝 🌊 
🏝 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
🌊 🌊 🌊 🌊 🏝 🌊 🌊 🌊 🌊 🌊 
🌊 🏝 🌊 🌊 🌊 🏝 🌊 🌊 🌊 🌊 
🌊 🦑 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
```

Here’s a `city`.

``` r
emojiscape::generate(terrain = "city")
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏬 🏢 🏢 🏢 
🏢 🏢 🦝 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏬 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏬 🏢 🏢 🏢 
```

Here’s a `desert`.

``` r
emojiscape::generate(terrain = "desert")
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🌵 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🌵 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🐫 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🌵 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🐫 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
```
