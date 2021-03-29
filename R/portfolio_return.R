#' Portfolio return
#'
#' @param w vector
#' @param r vector
#'
#' @return vector
#' @export
#'
#' @examples
#' w <- c(.55, .25, .2)
#' r <- c(0.08, 0.04, 0.03)
#' portfolio_return(w, r)
portfolio_return <- function(w, r) {
  (r %*% w)[[1]]
}
