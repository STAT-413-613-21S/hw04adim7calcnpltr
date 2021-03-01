test_that("calcn()", {
  x <- c(11,1,130)
  n <- 15
  n_int <- (as.integer(n))
  x_test <- c(x, n)

  expect_equal(calcn(x, n_int))
  expect_equal(calcn(x, n))
})
