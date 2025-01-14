#' Print model summary to the log file
#'
#' @param mdl an estiamted regression model

logSummary <- function(mdl) {
  # Open the log file for appending
  logFile <- file("log.txt", open = "a")

  # Redirect output to the log file
  sink(logFile)

  # Print the summary of the model
  print(summary(mdl))

  # Restore normal output
  sink()

  # Close the log file
  close(logFile)

  # Optional: Return the summary for use in the session
  # return(summary(mdl))
}
