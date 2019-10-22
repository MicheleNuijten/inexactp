#' @export

find_inexact_p <- function(txt){

  # if the input object doesn't have a name, number the items in the list
  if (is.null(names(txt))){
    names(txt) <-  1:length(txt)
  }

  pvalue_df <- extract_p(txt)

  inexact_p <- sum(pvalue_df$Reported.Comparison != "=")
  total <- nrow(pvalue_df)
  prop_inexact <- inexact_p/total

  return(paste("Of the", total, "p-value(s) found in this text,", inexact_p, "p-value(s) is/are reported inexactly"))
}
