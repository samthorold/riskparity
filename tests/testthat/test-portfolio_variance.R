test_that("portfolio_variance sanity check", {
  w <- c(.55, .25, .2)
  s <- c(.24, .18, .15)
  C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
  res <- round(portfolio_variance(w, s, C), 6)
  exp <- round(0.18005^2, 6)
  expect_equal(res, exp)
})
