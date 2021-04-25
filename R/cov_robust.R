#' Robustify a covariance matrix
#'
#' @param V matrix
#' @param e_thresh vector
#'
#' @return matrix
#' @export
#'
#' @examples
cov_robust <- function(V, e_thresh) {
  S <- sqrt(diag(V))
  S_inv <- diag(1 / S)
  C <- S_inv %*% V %*% S_inv
  diag(S) %*% cor_robust(C, e_thresh) %*% diag(S)
}
