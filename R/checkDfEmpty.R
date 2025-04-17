#' Check if a dataframe is empty or not
#'
#' This function stops with an error message if the dataframe does not meet the `is_empty` condition.
#'
#' @param df A dataframe to check.
#' @param is_empty Logical value. Are you expecting df to be empty?
#'
#' @return Returns \"Passed\" if the dataframe meets the condition.
#' @examples
#' \dontrun{
#' df <- data.frame()
#' checkNaDf(df, FALSE) # This will throw an error because df is empty
#' checkNaDf(df, TRUE)  # This will return "Pass" because df is empty
#' }
#' @export
checkDfEmpty <- function(df, is_empty) {
  if (!is.data.frame(df)) {
    stop("Input must be a dataframe.")
  }

  if (!is.logical(is_empty) || length(is_empty) != 1) {
    stop("is_empty must be a single logical (TRUE or FALSE) value.")
  }

  n_rows <- nrow(df)

  # If expecting an empty dataframe, this block runs
  if (is_empty) {

    if (n_rows > 0) {
      stop("Dataframe has zero rows.")
    }

  }

  # If expecting non-empty dataframe, this block runs
  if (!is_empty) {

    if (n_rows == 0) {
      stop("Dataframe has non-zero rows.")
    }

  }

  return("Pass")
}
