test_that("portfolio_return sanity check", {
  res <- portfolio_return(c(0.5, 0.5), matrix(c(0.1, 0.2, 0.2, 0.1), ncol = 2))
  exp <- matrix(c(0.15, 0.15))
  expect_equal(res, exp)
})
