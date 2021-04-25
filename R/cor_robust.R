#' Robustify a correlation matrix
#'
#' @param C matrix
#' @param e_thresh vector
#'
#' @return matrix
#' @export
#'
#' @examples
cor_robust <- function(C, e_thresh) {
  decomp <- eigen(C)
  e <- decomp$values
  e[e < e_thresh] = 0
  E_robust <- diag(e)
  C_robust <- decomp$vectors %*% E_robust %*% t(decomp$vectors)
  diag(C_robust) <- 1
  C_robust
}
