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
  wf^2 * decomp$values^2
}
