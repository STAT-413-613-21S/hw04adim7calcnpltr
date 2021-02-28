# Create it

calcn_lineplot <- function(df){
  output <- vector(mode = "integer", length = length(df[[4]])) # vector defining the length of n
  for (i in seq_along(df[[4]])) {
    output[i] <- calcn(x = cbind(df[[1]][i], df[[2]][i], df[[3]][i]), n = df[[4]][i])
    lineplot_df <- cbind(df, output)
    lineplot <- lineplot_df %>%
      ggplot2::ggplot(aes(x = n, y = output)) +
      geom_line() +
      labs(subtitle = "My Sequence: c(3, 2.5, 2.7, 2.783, 2.755, 2.744, 2.748, 2.749, 2.748)")
  }
  return(lineplot)
}


# Test it

calcn_lineplot(my_data)
