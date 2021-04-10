#' Entropy
#'
#' @param w vector
#'
#' @return vector
#' @export
#'
#' @examples
#' entropy(c(0.5, 0.5))
entropy <- function(w) {
  if (sum(w < 0)) {
    stop("All elements of `w` must be positive")
  }
  exp(-sum(w * log(w)))
}
