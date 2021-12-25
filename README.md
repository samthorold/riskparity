
<!-- README.md is generated from README.Rmd. Please edit that file -->

# riskparity

<!-- badges: start -->
<!-- badges: end -->

The goal of `{{riskparity}}` is to demonstrate different approaches to
asset allocation to achieve risk parity.

## Installation

You can install `{{riskparity}}` from [GitHub](https://github.com/)
with:

``` r
# install.packages("devtools")
devtools::install_github("samthorold/riskparity")
```

## Example

``` r
library(riskparity)
# asset allocation
w <- c(.55, .25, .2)
# asset standard deviations
s <- c(.24, .18, .15)
# asset correlation
C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)

# total contribution to portfolio standard deviation
asset_stdev_contrib(w, s, C)
#> [1] 0.13141350 0.03816440 0.01047209

# marginal contribution to portfolio standard deviation
asset_stdev_contrib(w, s, C, marginal = TRUE)
#> [1] 0.23893364 0.15265760 0.05236046

# dispersion measures
effective_constituents(w)
#> [1] 2.469136
entropy(w)
#> [1] 2.710875
entropy(asset_stdev_contrib(w, s, C))
#> [1] 1.551269

# df <- read.csv("../data/equity.csv")[,-1]
# head(df)
# dim(df)
# 
# w <- matrix(1 / rep(ncol(df), ncol(df)))
# s <- apply(df, 2, sd)
# 
# C <- cor(df)
# round(C, 2)
# all(round(cor_robust(C, 0), 2) == round(C, 2))
# round(cor_robust(C, 0.55), 2)
# 
# V <- cov(df)
# round(V, 6)
# all(round(cov_robust(V, 0), 6) == round(V, 6))
# round(cov_robust(V, 0.55), 6)
# 
# q <- asset_stdev_contrib(w, s, C) / sum(asset_stdev_contrib(w, s, C))
# q
# encb <- entropy(q)
# encb
# 
# C <- cor_robust(C, 0.55)
# 
# asset_stdev_contrib(w, s, C)
# sum(asset_stdev_contrib(w, s, C))
# 
# q <- asset_stdev_contrib(w, s, C) / sum(asset_stdev_contrib(w, s, C))
# q
# encb <- entropy(q)
# encb
# 
# factor_stdev_contrib(w, s, C)
# sum(factor_stdev_contrib(w, s, C))
# 
# p <- factor_stdev_contrib(w, s, C) / sum(factor_stdev_contrib(w, s, C))
# p
# enb <- entropy(p)
# enb

# Diversification ratio
w <- matrix(c(.55, .25, .2))
s <- matrix(c(.24, .18, .15))
C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
diversification_ratio(w, s, C)
#> [1] 1.149681
```

## Background

Variance of returns can be estimated with more confidence than the
returns themselves.

### Choueifaty and Coignard (2008): Towards Maximum Diversification

Diversification ratio

$$
D(w)=\\frac{w's}{w'Vw}
$$

where;

-   *w* is the asset weights
-   *s* is the asset volatilities
-   *V* is the asset covariance matrix
