
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {emojiscape}

<!-- badges: start -->

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![rostrum.blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/06/26/emojiscape/)
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

I made this for my own amusement, so no guarantees.

## Build a tiny world

You can `generate()` a scene by passing one of the recognised `terrain`
options.

``` r
emojiscape::generate("city")
🏢 🦝 🏬 🏬 🏢 🦝 🏬 🏢 🦝 🏬 
🏢 🦝 🏢 🏢 🏬 🏢 🏢 🏬 🏬 🏢 
🏢 🏬 🏢 🏢 🏢 🏢 🏬 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏬 🏢 🏢 🏢 
🏢 🦝 🏢 🏬 🏢 🏬 🏢 🏢 🏢 🏢 
🏢 🏢 🦝 🏢 🏢 🏢 🏢 🏢 🏬 🏢 
🏬 🦝 🏬 🦝 🏢 🏢 🦝 🏢 🏢 🏢 
🏢 🏬 🏬 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
🏢 🏢 🦝 🏢 🏢 🏢 🏢 🏢 🏬 🦝 
```

You can see the emoji set for each terrain. I’ve categorised them into
‘common’, ‘uncommon’ and ‘rare’ emoji based on what their default
sampling frequency.

``` r
emojiscape::get_set("city")
  terrain             name emoji     freq
1    city  office_building    🏢   common
2    city department_store    🏬 uncommon
3    city          raccoon    🦝     rare
```

You can adjust these frequencies with the `prob_*` arguments in
`generate()`. You can also change the `grid_size()` of the output.

``` r
emojiscape::generate(
  terrain = "city",
  grid_size = 7,  # i.e. a 7x7 grid
  prob_common = "0.2",
  prob_uncommon = "0.2",
  prob_rare = "0.6"
)
🦝 🦝 🏬 🏢 🏢 🦝 🦝 
🦝 🦝 🦝 🏬 🏬 🦝 🦝 
🏢 🦝 🏬 🦝 🏬 🦝 🦝 
🏢 🏢 🦝 🏢 🦝 🦝 🦝 
🦝 🦝 🏬 🦝 🏢 🦝 🦝 
🦝 🦝 🏬 🏬 🦝 🏬 🦝 
🦝 🦝 🦝 🏢 🏢 🦝 🦝 
```

## All terrains

The full set of terrain options is:

     [1] "arable"      "city"        "desert"      "forest"      "garden"     
     [6] "liminal"     "mountains"   "ocean"       "pastoral"    "polar"      
    [11] "rainforest"  "sky"         "space"       "suburbs"     "traffic"    
    [16] "undergrowth" "woods"      

<details>
<summary>
Click for a preview of all terrains
</summary>


    terrain = "arable"
    🚜 🌽 🌽 🌽 🌽 🌽 🚜 🌽 🌽 🌽 
    🚜 🌽 🌽 🚜 🚜 🌽 🌽 🌽 🌽 🌽 
    🌽 🚜 🌽 🐭 🌽 🌽 🌽 🐭 🌽 🚜 
    🌽 🚜 🌽 🌽 🌽 🌽 🌽 🌽 🌽 🌽 
    🌽 🌽 🌽 🌽 🌽 🌽 🌽 🌽 🌽 🌽 
    🌽 🐭 🌽 🌽 🌽 🚜 🌽 🌽 🌽 🌽 
    🌽 🌽 🌽 🌽 🌽 🌽 🐭 🌽 🌽 🌽 
    🚜 🌽 🚜 🌽 🌽 🌽 🌽 🚜 🌽 🌽 
    🌽 🌽 🌽 🌽 🌽 🌽 🌽 🚜 🌽 🚜 
    🌽 🚜 🌽 🚜 🚜 🌽 🌽 🌽 🚜 🌽 

    terrain = "city"
    🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏬 
    🏬 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏬 
    🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏬 🏬 🏢 
    🏢 🏢 🏬 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
    🏬 🏬 🏢 🏢 🏢 🏢 🏢 🏢 🏢 🏢 
    🏢 🏢 🏬 🏢 🏬 🏢 🏢 🏢 🏢 🏬 
    🏢 🦝 🏢 🏬 🏢 🏢 🏢 🏢 🏢 🏢 
    🏢 🏢 🦝 🏢 🏢 🏢 🏢 🏬 🏢 🏢 
    🏢 🏬 🏢 🏢 🏬 🏢 🏢 🦝 🏬 🏢 
    🏢 🦝 🏢 🏢 🦝 🏬 🏢 🏢 🏬 🏢 

    terrain = "desert"
    🏜 🏜 🌵 🌵 🏜 🏜 🏜 🏜 🏜 🏜 
    🏜 🏜 🏜 🏜 🐫 🌵 🏜 🏜 🏜 🐫 
    🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🐫 
    🏜 🏜 🌵 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
    🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
    🌵 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 🏜 
    🏜 🌵 🏜 🌵 🏜 🏜 🌵 🏜 🏜 🌵 
    🏜 🏜 🏜 🐫 🏜 🏜 🏜 🏜 🏜 🏜 
    🐫 🏜 🌵 🏜 🏜 🌵 🏜 🏜 🏜 🏜 
    🌵 🏜 🏜 🏜 🐫 🏜 🏜 🏜 🏜 🏜 

    terrain = "forest"
    🌲 🐿 🐿 🌲 🐿 🌲 🌲 🌲 🌲 🌲 
    🎄 🌲 🌲 🐿 🐿 🎄 🌲 🌲 🌲 🌲 
    🐿 🌲 🌲 🌲 🐿 🐿 🌲 🌲 🌲 🌲 
    🌲 🐿 🌲 🌲 🌲 🌲 🌲 🌲 🐿 🌲 
    🌲 🌲 🌲 🐿 🌲 🌲 🌲 🌲 🌲 🌲 
    🌲 🌲 🌲 🐿 🌲 🌲 🌲 🌲 🌲 🌲 
    🌲 🐿 🎄 🌲 🌲 🌲 🌲 🐿 🌲 🌲 
    🌲 🌲 🌲 🐿 🌲 🐿 🌲 🌲 🌲 🎄 
    🐿 🌲 🌲 🌲 🌲 🌲 🌲 🌲 🌲 🐿 
    🌲 🌲 🌲 🌲 🌲 🐿 🌲 🐿 🌲 🎄 

    terrain = "garden"
    🌹 🌹 🌹 🌹 🌹 🌱 🌹 🌹 🌱 🌹 
    🌹 🌹 🌹 🌹 🌹 🌹 🌹 🌹 🌹 🌱 
    🌹 🌹 🌹 🌹 🌱 🌹 🌱 🌹 🌱 🌹 
    🌹 🌹 🌹 🥀 🌹 🌱 🌹 🌹 🌹 🌱 
    🌹 🌱 🌹 🌹 🌹 🌹 🌹 🌹 🌹 🌱 
    🌹 🌹 🌹 🌹 🌹 🌹 🌱 🌹 🌹 🌹 
    🌹 🌱 🌹 🌹 🌹 🥀 🌱 🌹 🌱 🌹 
    🌹 🌱 🌹 🌹 🥀 🌱 🥀 🌹 🌹 🌹 
    🌹 🌹 🥀 🌹 🌹 🌹 🌹 🌱 🌹 🌹 
    🌹 🌱 🌹 🌱 🌹 🌱 🌱 🌹 🌹 🌹 

    terrain = "liminal"
    ⬜ ⬜ ⬜ ⬜ 🚪 ⬜ ⬜ ⬜ ⬜ ⬜ 
    ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ 🚪 ⬜ 
    ⬜ ⬜ ⬜ ⬜ ⬜ 🚪 ⬜ 🚪 🚪 ⬜ 
    ⬜ ⬜ ⬜ ⬜ 🚪 ⬜ ⬜ ⬜ ⬜ ⬜ 
    ⬜ ⬜ 🚪 💡 ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ 
    ⬜ ⬜ ⬜ 💡 🚪 ⬜ ⬜ ⬜ ⬜ ⬜ 
    ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ ⬜ 🚪 
    💡 ⬜ ⬜ 🚪 ⬜ ⬜ 🚪 ⬜ ⬜ 🚪 
    ⬜ 💡 ⬜ ⬜ ⬜ ⬜ 🚪 ⬜ ⬜ 💡 
    ⬜ ⬜ 🚪 ⬜ ⬜ ⬜ 🚪 🚪 🚪 ⬜ 

    terrain = "mountains"
    ⛰ ⛰ ⛰ 🏔️ ⛰ ⛰ ⛰ 🏔️ 🐐 ⛰ 
    🏔️ ⛰ 🏔️ ⛰ ⛰ ⛰ 🏔️ ⛰ ⛰ ⛰ 
    🏔️ ⛰ ⛰ ⛰ ⛰ ⛰ 🐐 🏔️ ⛰ ⛰ 
    🏔️ ⛰ ⛰ ⛰ 🏔️ ⛰ ⛰ ⛰ 🐐 ⛰ 
    ⛰ 🏔️ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ 🏔️ ⛰ 
    ⛰ ⛰ ⛰ 🏔️ ⛰ ⛰ 🏔️ ⛰ ⛰ 🏔️ 
    ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ 
    🏔️ ⛰ 🏔️ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ 
    ⛰ ⛰ 🏔️ ⛰ ⛰ ⛰ 🐐 🏔️ ⛰ ⛰ 
    ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ ⛰ 🏔️ 🐐 

    terrain = "ocean"
    🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🏝 🌊 
    🌊 🏝 🏝 🌊 🏝 🐬 🏝 🌊 🌊 🏝 
    🌊 🌊 🌊 🏝 🌊 🏝 🌊 🌊 🌊 🌊 
    🌊 🏝 🌊 🌊 🌊 🐬 🌊 🏝 🏝 🌊 
    🌊 🏝 🌊 🌊 🌊 🐬 🌊 🌊 🌊 🌊 
    🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 
    🌊 🌊 🌊 🏝 🌊 🌊 🏝 🌊 🌊 🌊 
    🌊 🐬 🌊 🌊 🐬 🌊 🌊 🌊 🏝 🌊 
    🌊 🌊 🌊 🏝 🏝 🌊 🌊 🐬 🌊 🐬 
    🌊 🏝 🏝 🌊 🌊 🌊 🏝 🏝 🌊 🌊 

    terrain = "pastoral"
    🐓 🐓 🐓 🐣 🐓 🐓 🐓 🐓 🐓 🥚 
    🐓 🐣 🐓 🐓 🥚 🐓 🥚 🐓 🐓 🐓 
    🥚 🐓 🐓 🥚 🥚 🐓 🥚 🐓 🥚 🥚 
    🐓 🐓 🐓 🐓 🐓 🐓 🥚 🥚 🥚 🐓 
    🐓 🐣 🐓 🐓 🐓 🐓 🐓 🐓 🐓 🐣 
    🐓 🥚 🥚 🐓 🐓 🐓 🐓 🐓 🐓 🐓 
    🐓 🐓 🐓 🐣 🐓 🐓 🐓 🥚 🐓 🐓 
    🐓 🐓 🐓 🐓 🐓 🐓 🐣 🐓 🐓 🐓 
    🐓 🐓 🐓 🥚 🐓 🥚 🐓 🥚 🐓 🐓 
    🥚 🐓 🐓 🐓 🐓 🐓 🐓 🐓 🐓 🐓 

    terrain = "polar"
    🌨 🌨 🌨 🌨 🌨 🌨 🌨 🌨 🐧 ❄️ 
    ❄️ ❄️ ❄️ 🌨 🌨 🌨 🌨 🌨 🌨 🌨 
    ❄️ 🐧 🌨 ❄️ 🌨 ❄️ 🌨 ❄️ 🌨 🌨 
    🌨 🌨 🌨 🌨 🌨 🌨 ❄️ ❄️ 🌨 ❄️ 
    🌨 ❄️ 🌨 🌨 🐧 🌨 🌨 🌨 🌨 🌨 
    🌨 🌨 🌨 🐧 🌨 🌨 🌨 🐧 🌨 ❄️ 
    🌨 🌨 🌨 🌨 🐧 ❄️ 🌨 🌨 🌨 🌨 
    🌨 🌨 🌨 🌨 🌨 🌨 🌨 ❄️ 🐧 ❄️ 
    🌨 🌨 🌨 🐧 🐧 🌨 🌨 🌨 🌨 🌨 
    ❄️ ❄️ 🌨 🐧 🌨 🌨 ❄️ 🌨 🌨 🌨 

    terrain = "rainforest"
    🌳 🐍 🌳 🌳 🐍 🌳 🐍 🌳 🌳 🌳 
    🐍 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🦍 🌳 
    🌳 🌳 🌳 🦍 🐍 🌳 🐍 🌳 🌳 🐍 
    🌳 🌳 🌳 🐍 🌳 🌳 🌳 🌳 🌳 🌳 
    🌳 🐍 🌳 🌳 🌳 🌳 🐍 🐍 🐍 🌳 
    🦍 🌳 🐍 🐍 🌳 🌳 🌳 🌳 🌳 🦍 
    🌳 🐍 🌳 🐍 🌳 🌳 🌳 🌳 🌳 🌳 
    🐍 🐍 🌳 🌳 🐍 🌳 🌳 🐍 🦍 🌳 
    🐍 🌳 🌳 🌳 🐍 🌳 🌳 🐍 🌳 🐍 
    🐍 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🐍 

    terrain = "sky"
    ✈️ 🌧 🌧 🌧 🌧 🌧 🌧 🌧 🌧 🌧 
    🌧 🌧 🌧 🌈 🌧 🌈 ✈️ 🌧 🌧 🌧 
    🌧 🌧 🌈 🌧 🌧 🌧 🌈 🌧 🌧 🌧 
    🌧 ✈️ 🌧 🌧 🌧 🌧 🌧 🌧 🌧 🌧 
    ✈️ 🌧 🌧 🌧 🌧 🌧 🌧 🌧 🌧 🌧 
    🌧 ✈️ 🌧 🌧 🌈 🌧 🌧 🌈 🌧 ✈️ 
    🌧 🌧 🌈 🌧 🌧 🌧 🌧 🌧 ✈️ 🌧 
    🌧 🌧 🌈 🌧 🌈 🌧 🌧 🌧 🌧 🌈 
    🌧 🌈 🌧 🌧 🌧 🌈 🌧 🌧 🌧 🌧 
    🌧 🌧 🌧 🌧 🌧 🌧 🌈 🌧 🌧 🌧 

    terrain = "space"
    ⬛ ⬛ ⬛ ⬛ ⭐ ⭐ ⭐ ⭐ ⬛ ⬛ 
    ⬛ ⬛ ⭐ ⬛ ⭐ ⬛ ⬛ ⬛ ⬛ ⬛ 
    ⬛ ⬛ ⬛ ⭐ ⭐ ⬛ ⭐ ⬛ ⭐ ⬛ 
    ⭐ ⬛ ⬛ ⭐ ⬛ ⬛ ⬛ ⬛ ⬛ ⬛ 
    ⬛ ⬛ ⬛ ⬛ 🛰 ⬛ ⬛ ⭐ ⬛ ⬛ 
    ⬛ ⬛ ⬛ ⬛ ⭐ ⬛ ⬛ ⬛ ⭐ ⭐ 
    ⬛ ⬛ ⬛ ⬛ ⬛ ⭐ ⬛ ⬛ ⭐ ⬛ 
    ⬛ ⬛ ⭐ ⬛ ⬛ ⬛ ⬛ ⬛ 🛰 ⭐ 
    ⬛ ⬛ ⬛ ⬛ ⬛ ⭐ ⬛ ⭐ ⬛ ⬛ 
    ⬛ ⬛ 🛰 ⭐ ⭐ ⬛ ⬛ ⭐ ⬛ ⬛ 

    terrain = "suburbs"
    🏡 🌳 🌳 🌳 🏡 🌳 🌳 🌳 🌳 🌳 
    🏡 🌳 🌳 🌳 🏡 🏡 🌳 🌳 🌳 🚴 
    🚴 🌳 🌳 🌳 🌳 🌳 🌳 🏡 🌳 🏡 
    🌳 🌳 🌳 🌳 🏡 🌳 🌳 🏡 🌳 🌳 
    🌳 🌳 🏡 🌳 🌳 🌳 🏡 🌳 🌳 🏡 
    🌳 🏡 🏡 🌳 🌳 🌳 🌳 🏡 🌳 🌳 
    🚴 🌳 🚴 🌳 🏡 🌳 🌳 🌳 🌳 🏡 
    🌳 🌳 🚴 🌳 🏡 🌳 🌳 🏡 🏡 🌳 
    🌳 🌳 🌳 🏡 🌳 🌳 🌳 🏡 🌳 🌳 
    🌳 🌳 🌳 🌳 🏡 🌳 🏡 🌳 🏡 🌳 

    terrain = "traffic"
    🚗 🚚 🚕 🚗 🚕 🚗 🚕 🚕 🚕 🚕 
    🚗 🚗 🚗 🚕 🚗 🚗 🚕 🚕 🚗 🚗 
    🚗 🚗 🚕 🚕 🚗 🚗 🚗 🚗 🚗 🚗 
    🚗 🚗 🚗 🚗 🚗 🚗 🚗 🚗 🚗 🚕 
    🚗 🚕 🚗 🚚 🚕 🚗 🚗 🚗 🚗 🚕 
    🚕 🚗 🚗 🚗 🚗 🚗 🚕 🚗 🚗 🚗 
    🚗 🚗 🚚 🚗 🚗 🚗 🚗 🚚 🚗 🚗 
    🚕 🚗 🚕 🚗 🚗 🚗 🚗 🚗 🚗 🚕 
    🚕 🚗 🚕 🚗 🚕 🚗 🚗 🚚 🚗 🚗 
    🚗 🚕 🚕 🚗 🚕 🚕 🚗 🚕 🚗 🚗 

    terrain = "undergrowth"
    🍂 🍂 🐜 🍂 🍂 🍂 🍂 🍂 🐜 🍂 
    🍄 🍂 🍂 🍂 🐜 🍂 🍂 🍂 🍂 🐜 
    🍂 🍂 🍂 🍂 🍂 🍄 🐜 🍂 🍂 🍂 
    🍂 🍂 🐜 🍂 🐜 🍂 🐜 🐜 🐜 🍂 
    🍂 🍂 🍄 🍂 🍂 🍂 🍂 🍂 🍂 🍂 
    🍂 🍂 🍂 🍂 🍂 🍂 🐜 🍂 🍂 🍂 
    🍂 🍂 🍂 🐜 🍂 🍂 🐜 🐜 🍂 🍂 
    🍂 🍂 🍂 🍂 🍂 🍂 🍂 🍂 🍂 🍂 
    🍂 🐜 🍂 🐜 🍂 🍂 🍂 🍂 🍂 🍂 
    🍂 🍂 🐜 🍂 🐜 🍂 🍄 🍂 🍂 🍂 

    terrain = "woods"
    🌰 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌰 🌰 
    🐿 🌳 🌳 🌳 🌳 🌰 🌳 🌳 🌰 🌰 
    🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 
    🌳 🌰 🌳 🌳 🌳 🌳 🌳 🌳 🌰 🌰 
    🌰 🌳 🌳 🌳 🌳 🌳 🌰 🌳 🌰 🌳 
    🌰 🌳 🌳 🌳 🌰 🌳 🌰 🌰 🌳 🌳 
    🌳 🌰 🌳 🌳 🌳 🌰 🌳 🌳 🌳 🌳 
    🌳 🌳 🌰 🌳 🌳 🌰 🌳 🌰 🌳 🌳 
    🌰 🌳 🌰 🐿 🌳 🌳 🌳 🌳 🌳 🌳 
    🌳 🌰 🌳 🌳 🌳 🌳 🌳 🌳 🌳 🌳 

</details>
<details>
<summary>
Click for all emoji sets
</summary>


    terrain = "arable"
      terrain        name emoji     freq
    1  arable ear_of_corn    🌽   common
    2  arable     tractor    🚜 uncommon
    3  arable       mouse    🐭     rare

    terrain = "city"
      terrain             name emoji     freq
    1    city  office_building    🏢   common
    2    city department_store    🏬 uncommon
    3    city          raccoon    🦝     rare

    terrain = "desert"
      terrain   name emoji     freq
    1  desert desert     🏜   common
    2  desert cactus    🌵 uncommon
    3  desert  camel    🐫     rare

    terrain = "forest"
      terrain           name emoji     freq
    1  forest evergreen_tree    🌲   common
    2  forest       squirrel     🐿 uncommon
    3  forest christmas_tree    🎄     rare

    terrain = "garden"
      terrain          name emoji     freq
    1  garden          rose    🌹   common
    2  garden      seedling    🌱 uncommon
    3  garden wilted_flower    🥀     rare

    terrain = "liminal"
      terrain               name emoji     freq
    1 liminal white_large_square    ⬜   common
    2 liminal               door    🚪 uncommon
    3 liminal         light_bulb    💡     rare

    terrain = "mountains"
        terrain                 name emoji     freq
    1 mountains             mountain     ⛰   common
    2 mountains snow_capped_mountain     🏔️ uncommon
    3 mountains                 goat    🐐     rare

    terrain = "ocean"
      terrain          name emoji     freq
    1   ocean    water_wave    🌊   common
    2   ocean desert_island     🏝 uncommon
    3   ocean       dolphin    🐬     rare

    terrain = "pastoral"
       terrain           name emoji     freq
    1 pastoral        rooster    🐓   common
    2 pastoral            egg    🥚 uncommon
    3 pastoral hatching_chick    🐣     rare

    terrain = "polar"
      terrain            name emoji     freq
    1   polar cloud_with_snow     🌨   common
    2   polar       snowflake     ❄️ uncommon
    3   polar         penguin    🐧     rare

    terrain = "rainforest"
         terrain           name emoji     freq
    1 rainforest deciduous_tree    🌳   common
    2 rainforest          snake    🐍 uncommon
    3 rainforest        gorilla    🦍     rare

    terrain = "sky"
      terrain            name emoji     freq
    1     sky cloud_with_rain     🌧   common
    2     sky         rainbow    🌈 uncommon
    3     sky        airplane     ✈️     rare

    terrain = "space"
      terrain               name emoji     freq
    1   space black_large_square    ⬛   common
    2   space               star    ⭐ uncommon
    3   space              orbit     🛰     rare

    terrain = "suburbs"
      terrain              name emoji     freq
    1 suburbs    deciduous_tree    🌳   common
    2 suburbs house_with_garden    🏡 uncommon
    3 suburbs     person_biking    🚴     rare

    terrain = "traffic"
      terrain       name emoji     freq
    1 traffic automobile    🚗   common
    2 traffic       taxi    🚕 uncommon
    3 traffic      truck    🚚     rare

    terrain = "undergrowth"
          terrain        name emoji     freq
    1 undergrowth fallen_leaf    🍂   common
    2 undergrowth         ant    🐜 uncommon
    3 undergrowth    mushroom    🍄     rare

    terrain = "woods"
      terrain           name emoji     freq
    1   woods deciduous_tree    🌳   common
    2   woods       chestnut    🌰 uncommon
    3   woods       chipmunk     🐿     rare

</details>

## Terrain expansion

You can raise [a new
issue](https://github.com/matt-dray/emojiscape/issues) or pull request
to add a terrain, which are specified in
[/R/utils.R](https://github.com/matt-dray/emojiscape/blob/main/R/utils.R).
Please note that the emojiscape project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
