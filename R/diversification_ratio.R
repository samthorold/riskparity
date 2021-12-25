#' Diversification ratio of Choueifaty and Coignard (2008)
#'
#' @param w matrix
#' @param s matrix
#' @param C matrix
#'
#' @return vector
#' @export
#'
#' @examples
#' w <- matrix(c(.55, .25, .2))
#' s <- matrix(c(.24, .18, .15))
#' C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
#' diversification_ratio(w, s, C)
diversification_ratio <- function(w, s, C) {
  (t(w) %*% s / portfolio_stdev(w, s, C))[[1]]
}
