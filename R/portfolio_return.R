#' Portfolio return
#'
#' @param w vector
#' @param R matrix
#'
#' @return matrix
#' @export
#'
#' @examples
#' portfolio_return(c(0.5, 0.5), matrix(c(0.1, 0.2, 0.2, 0.1), ncol = 2))
portfolio_return <- function(w, R) {
  R %*% w
}
