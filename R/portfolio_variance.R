#' Portfolio variance
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
#' portfolio_variance(w, s, C)
portfolio_variance <- function(w, s, C) {
  S <- diag(c(s))
  V <- S %*% C %*% S
  (t(w) %*% V %*% w)[[1]]
}
