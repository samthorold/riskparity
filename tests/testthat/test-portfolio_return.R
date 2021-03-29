test_that("portfolio_return sanity check", {
  w <- c(.55, .25, .2)
  r <- c(0.08, 0.04, 0.03)
  res <- portfolio_return(w, r)
  exp <- 0.06
  expect_equal(res, exp)
})
