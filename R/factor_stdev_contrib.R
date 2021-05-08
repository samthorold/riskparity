#' Statistical factor contribution to portfolio standard deviation
#'
#' @param w matrix
#' @param s matrix
#' @param C matrix
#'
#' @return vector
#' @export
#'
#' @examples
factor_stdev_contrib <- function(w, s, C) {
  V <- diag(s) %*% C %*% diag(s)
  decomp <- eigen(V)
  wf <- t(decomp$vectors) %*% w
  # eigenvalues already "squared"
  p <- (wf^2 * decomp$values) / portfolio_variance(w, s, C)
  p * portfolio_stdev(w, s, C)
}
