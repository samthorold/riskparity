#' Most diversified portfolio of Choueifaty and Coignard (2008)
#'
#' @param s matrix of asset standard deviations
#' @param C matrix of asset correlations
#'
#' @return matrix of asset weights
#' @export
#'
#' @examples
#' s <- matrix(c(.15, .3))
#' C <- matrix(c(1, .5, .5, 1), nrow = 2)
#' most_diversified_portfolio(s, C)
most_diversified_portfolio <- function(s, C) {
  S <- diag(c(s))
  M <- solve(S) %*% solve(C) %*% matrix(rep(1, length(s)))
  M / sum(M)
}
