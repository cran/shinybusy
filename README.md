# shinybusy

> Automated (or not) busy indicator for Shiny apps

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/dreamRs/shinybusy.svg?branch=master)](https://travis-ci.org/dreamRs/shinybusy)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![version](http://www.r-pkg.org/badges/version/shinybusy)](https://CRAN.R-project.org/package=shinybusy)
[![cranlogs](http://cranlogs.r-pkg.org/badges/shinybusy)](https://CRAN.R-project.org/package=shinybusy)
[![Codecov test coverage](https://codecov.io/gh/dreamRs/shinybusy/branch/master/graph/badge.svg)](https://codecov.io/gh/dreamRs/shinybusy?branch=master)
<!-- badges: end -->

## Installation

Install from CRAN with:

```r
install.packages("shinybusy")
```

You can install dev version of `shinybusy` from GitHub:

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



## Other related packages

These packages provide cool alternative to add progress indicator in shiny application :

* [{waiter}](https://github.com/JohnCoene/waiter) : Loading screens for Shiny
* [{shinycssloaders}](https://github.com/andrewsali/shinycssloaders) : Add CSS loader animations to Shiny outputs
* [{shinycustomloader}](https://github.com/emitanaka/shinycustomloader) : Add a custom loader for R shiny



## Acknowledgements

Development of this package was funded by Silex Technologies (https://www.silex-ip.com)

<img src="man/figures/logo-silex.png">
