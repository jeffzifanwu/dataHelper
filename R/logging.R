#' Logging class
#'
#' @field fileName is a string
#' @examples
#' myLog = logging$new("log.txt")
#'
#' @export

logging <- R6::R6Class("logging",

 # Public ----
 public = list(

   # Properties
   fileName  = NULL,  # Synthetic data

   # Initialize
   #' @param fileName The name of the logging file
   #' @return An logging object
   initialize = function(fileName) {
     self$fileName  <- fileName
    }, # end initialize

   # -=-=-=-=-=-=
   # Methods
   # -=-=-=-=-=-=

   #' Write a message
   #' @param message The message to be printed
   write = function(message) {

     # Debug print
     logFile <- file(self$fileName, open = "a")
      sink(logFile)
        cat(paste0(message, "\n"))
      sink()
     close(logFile)
  }, # end write

  #' Create a logging file
  #' @description create a file
  createFile = function(){
     sink(self$fileName)
     sink()
  } # end createFile

), # end public list

 # Private ----
 private = list(

   # Methods
   printHellowWorld = function(){
     cat("Hello world \n")
   } # End printHellowWorld

 ) # end private list

) # end class

