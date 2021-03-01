test_that("calcn() calculates sequence in vector given n", {
  x <- c(11,1,130)
  n <- 15
  n_int <- (as.integer(n))
  x_test <- c(x, n)

  expect_equal(calcn(x, n_int), expected = 109.64136)
  expect_equal(calcn(x, n), expected = 109.64136)
})
