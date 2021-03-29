
<!-- README.md is generated from README.Rmd. Please edit that file -->

# riskparity

<!-- badges: start -->
<!-- badges: end -->

The goal of `{{riskparity}}` is to demonstrate different approaches to
asset allocation to achieve risk parity.

## Installation

You can install the released version of riskparity from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("riskparity")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("samthorold/riskparity")
```

## Example

``` r
library(riskparity)
w <- c(.55, .25, .2)
s <- c(.24, .18, .15)
C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
asset_stdev_contrib(w, s, C)
#> [1] 0.13141350 0.03816440 0.01047209
asset_stdev_contrib(w, s, C, marginal = TRUE)
#> [1] 0.23893364 0.15265760 0.05236046
```
