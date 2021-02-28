# Create it

calcn <- function(x, n) {
  stopifnot(is.numeric(x))
  stopifnot(length(x) %% 3 == 0)
  #stopifnot(is.integer(n))
  stopifnot(n > 0)

  dplyr::case_when(
    n >= 1 & n <= 3 ~
      { x[n] = x[n] })

  calc_vec <- vector(mode = "numeric", length = n)
  #calc_vec <- calc_vec[1:3]
  for (i in 4:length(calc_vec)) {
    x[i] = x[i-1] + ((x[i-3] - x[i-2])/i)
  }
  return(x[n])
}


# Test it

calcn(x = c(3, 1, 10), n = 4)
