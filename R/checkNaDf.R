#' Check for NA values in a specified column of a dataframe
#'
#' This function checks if a specified column in a dataframe contains any NA values.
#' If the column does not exist in the dataframe, an error is thrown.
#' If the column contains any NA values, an error is thrown.
#' If the column does not contain any NA values, a message is displayed.
#'
#' @param df A dataframe in which to check for NA values.
#' @param column_name A string specifying the name of the column to check.
#'
#' @return This function does not return a value. It either throws an error or displays a message.
#' @examples
#' \dontrun{
#' df <- data.frame(a = c(1, 2, NA), b = c(4, 5, 6))
#' checkNaDf(df, "a") # This will throw an error because column 'a' contains NA values
#' checkNaDf(df, "b") # This will display a message because column 'b' does not contain any NA values
#' }
#' @export
checkNaDf <- function(df, column_name) {
  if (!column_name %in% colnames(df)) {
    stop(paste("Column", column_name, "does not exist in the dataframe"))
  }
  
  if (any(is.na(df[[column_name]]))) {
    stop(paste("Column", column_name, "contains NA values"))
  } else {
    message(paste("Column", column_name, "does not contain any NA values"))
  }
}
