# Create it

#' Calculates n Given A Three Element Vector
#'
#' @param x - a 3 element vector
#' @param n - an integer
#'
#' @return - a numeric value
#' @export
#'
#' @examples

calcn <- function(x, n) {
  stopifnot(length(x) == 3)
  stopifnot(length(n) == 1)
  if (n <= 0) {
    stop("n needs to be greater than 0")
  } else if (n >= 1 & n <= 3) {
    return(x[n])
  }
  calc_vec <- vector(mode = "numeric", length = n)
  calc_vec[1:3] <- x
  for (i in 4:length(calc_vec)) {
    calc_vec[i] <- calc_vec[i-1] + ((calc_vec[i-3] - calc_vec[i-2])/i)
  }
  return(calc_vec[n])
}


# Test it

calcn(x = c(3, 1, 10), n = 4)
