# Create it

#' Line Plot from recursive function
#' Takes output of the calcn() applied o a tibble and creates a line plot
#' @param df a n x 4 tibble
#'
#' @return a line plot
#' @export
#' @importFrom ggplot2 ggplot aes geom_line
#' @examples
calcn_lineplot <- function(df){
  output <- vector(mode = "integer", length = length(df[[4]])) # vector defining the length of n
  for (i in seq_along(df[[4]])) {
    output[i] <- calcn(x = cbind(df[[1]][i], df[[2]][i], df[[3]][i]), n = df[[4]][i])
    lineplot_df <- cbind(df, output)
    n <- df[[4]]
    lineplot <- lineplot_df %>%
      ggplot2::ggplot(aes(x = n, y = output)) +
      geom_line() +
      labs(subtitle = "My Sequence: c(3, 2.5, 2.7, 2.783, 2.755, 2.744, 2.748, 2.749, 2.748)")
  }
  return(lineplot)
}


# Test it
my_data <- tibble::tribble(
  ~x, ~y, ~z, ~n,
  2,4,3,3,
  2,4,3,4,
  2,4,3,5,
  2,4,3,6,
  2,4,3,7,
  2,4,3,8,
  2,4,3,9,
  2,4,3,10,
  2,4,3,12)

calcn_lineplot(my_data) # this is to test calcn_lineplot function
