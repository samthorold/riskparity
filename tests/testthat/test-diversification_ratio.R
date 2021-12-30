test_that("diversification sanity test", {
  w <- c(.55, .25, .2)
  s <- c(.24, .18, .15)
  C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
  res <- round(diversification_ratio(w, s, C), 6)
  exp <- 1.149681
  expect_equal(res, exp)
})

test_that("diversification paper ex 1", {
  w <- c(.666, .333)
  s <- c(.15, .3)
  C <- matrix(c(1, .5, .5, 1), nrow = 2)
  res <- round(diversification_ratio(w, s, C), 6)
  exp <- 1.154701
  expect_equal(res, exp)
})

test_that("diversification sanity test", {
  w <- c(.257, .257, .486)
  s <- c(.2, .2, .2)
  C <- matrix(c(1, .9, .1, .9, 1, .1, .1, .9, 1), nrow = 3)
  res <- round(diversification_ratio(w, s, C), 6)
  exp <- 1.252877
  expect_equal(res, exp)
})
