test_that("diversification sanity test", {
  w <- c(.55, .25, .2)
  s <- c(.24, .18, .15)
  C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
  res <- round(diversification_ratio(w, s, C), 6)
  exp <- 1.149681
  expect_equal(res, exp)
})
