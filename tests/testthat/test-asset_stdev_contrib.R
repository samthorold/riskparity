test_that("asset_stdev_contrib total sanity check", {
  w <- c(.55, .25, .2)
  s <- c(.24, .18, .15)
  C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
  res <- round(asset_stdev_contrib(w, s, C), 4)
  exp <- c(0.1314, 0.0382, 0.0105)
  expect_equal(res, exp)
})

test_that("asset_stdev_contrib marginal sanity check", {
  w <- c(.55, .25, .2)
  s <- c(.24, .18, .15)
  C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
  res <- round(asset_stdev_contrib(w, s, C, TRUE), 4)
  exp <- c(0.2389, 0.1527, 0.0524)
  expect_equal(res, exp)
})
