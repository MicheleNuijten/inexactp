#' @export

check_file <- function(fileName, ...){

  if (missing(fileName))
      fileName <- tcltk::tk_choose.files()

    txts <- file_to_txt(fileName)

    if(!is.null(txts)){

    names(txts) <-
      gsub("\\.pdf$ | \\.html?$", "", basename(fileName), perl = TRUE)

    return(find_inexact_p(txts, ...))

    } else {

      cat("Please provide either a PDF or HTML file. No other file types are currently supported.")
    }
}
