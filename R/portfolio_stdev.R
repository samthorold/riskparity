#' Portfolio standard deviation
#'
#' @param w vector
#' @param s vector
#' @param C matrix
#'
#' @return vector
#' @export
#'
#' @examples
#' w <- c(.55, .25, .2)
#' s <- c(.24, .18, .15)
#' C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
#' portfolio_stdev(w, s, C)
portfolio_stdev <- function(w, s, C) {
  sqrt(portfolio_variance(w, s, C))
}
