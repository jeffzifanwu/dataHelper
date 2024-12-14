#' Generate dimension IDs

#' @param dimSize A vector of dimension sizes
#' @param dimName A vecotr of dimension names
#' @return A dataframe containing dimension IDs
#' @examples
#' genDimIds(dimSize =  c(2,3,4), dimName = c("site_id", "period_id", "worker_id"))
#' @export

genDimIds <- function(dimSize, dimName = NULL) {

  # Number of dimensions
  dimNmb = length(dimSize)

  # Debug print
  # logFile <- file("log.txt", open = "a")
  # sink(logFile)
  # funcName = paste(as.character(match.call()), collapse = "~")
  # cat(paste0(funcName, ": begins \n"))
  # cat(paste0("Number of dimensions: ", dimNmb, "\n"))
  # sink()
  # close(logFile)

  # Initialize a list to store each dimension's sequence
  dimSequences <- vector("list", dimNmb)

  # Populate the sequences for each dimension
  for (i in seq_along(dimSize)) {
    dimSequences[[i]] <- rep( 1:dimSize[i],
                              each = if (i == dimNmb) 1 else prod(dimSize[(i+1):dimNmb]),
                              times  = if (i == 1) 1 else prod(dimSize[1:(i-1)])
    )
  }

  # Convert the sequences into a data frame
  df <- as.data.frame(dimSequences)

  # Assign column names based on the condition
  if (!is.null(dimName)) {
    colnames(df) <- dimName
  } else {
    colnames(df) <- paste0("dim", seq_along(dimSize))
  }
  # colnames(df) <- paste0("dim", seq_along(dimSize))

  return(df)

}
