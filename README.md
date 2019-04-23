# shinybusy

> Automated (or not) busy indicator for Shiny apps

[![Travis build status](https://travis-ci.org/dreamRs/shinybusy.svg?branch=master)](https://travis-ci.org/dreamRs/shinybusy)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)


## Installation

You can install `shinybusy` from GitHub:

``` r
remotes::install_github("dreamRs/shinybusy")
```



## Examples


### Gif

Animate a Gif when server is busy and pause animation when server is idle :

```r
# Somewhere in UI
add_busy_gif(src = "https://jeroen.github.io/images/banana.gif", height = 70, width = 70)
```
![](man/figures/shinybusy-gif.gif)



### Progress bar

Make an infinite progress bar appear on top of the page when server is busy :

```r
add_busy_bar(color = "#FF0000")
```

![](man/figures/shinybusy-bar.gif)




### Spinner

Add a spinner when server is busy on top-right corner of the page with:


```r
# UI
add_busy_spinner(spin = "fading-circle")
```

Classic Shiny:
![](man/figures/shinybusy-spin.gif)


Shinydashboard:
![](man/figures/spin-dash.png)

Shinythemes:
![](man/figures/spin-theme.png)






## Acknowledgements

Development of this package was funded by Silex Technologies (https://www.silex-ip.com)

<img src="man/figures/logo-silex.png">
