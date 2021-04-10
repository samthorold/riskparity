test_that("multiplication works", {
  res <- effective_constituents(c(0.5, 0.5))
  expect_equal(round(res, 3), 2)

  res <- effective_constituents(c(0.4, 0.4, 0.2))
  expect_equal(round(res, 3), 2.778)
})
