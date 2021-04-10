#' Title
#'
#' @param w vector
#' @param a vector
#'
#' @return vector
#' @export
#'
#' @examples
#' effective_constituents(c(0.4, 0.4, 0.2))
effective_constituents <- function(w, a = 2) {
  if (a == 1) {
    stop("`a` cannot be 1")
  }
  if (a < 0) {
    stop("`a` must be positive")
  }
  sum(w ^ a) ^ (1 / (1 - a))
}
