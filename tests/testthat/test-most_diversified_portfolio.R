test_that("most diversified portfolio sanity check", {
  s <- matrix(c(.15, .3))
  C <- matrix(c(1, .5, .5, 1), nrow = 2)
  got <- round(most_diversified_portfolio(s, C), 6)
  want <- matrix(c(0.666667, 0.333333))
  expect_equal(got, want)
})
