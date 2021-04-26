#' Asset contribution to portfolio standard deviation
#'
#' @param w matrix
#' @param s matrix
#' @param C matrix
#' @param marginal bool
#'
#' @return vector
#' @export
#'
#' @examples
#' w <- matrix(c(.55, .25, .2))
#' s <- matrix(c(.24, .18, .15))
#' C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
#' asset_stdev_contrib(w, s, C)
#' asset_stdev_contrib(w, s, C, marginal = TRUE)
asset_stdev_contrib <- function(w, s, C, marginal = FALSE) {
  S <- diag(c(s))
  V <- S %*% C %*% S
  denominator <- portfolio_stdev(w, s, C)
  if (marginal) {
    numerator <- V %*% w
  } else {
    numerator <- diag(c(w)) %*% V %*% w
  }
  c(numerator / denominator)
}
