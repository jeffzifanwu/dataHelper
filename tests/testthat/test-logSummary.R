test_that("multiplication works", {

  # start logging
  myLog = logging$new("log.txt")
  myLog$createFile()

  # Create a simple dataset
  set.seed(123)
  x <- rnorm(100, mean = 50, sd = 10)
  y <- 2 * x + rnorm(100, mean = 0, sd = 5)

  # Fit a simple linear regression model
  mdl <- lm(y ~ x)

  # write model summary to log
  logSummary(mdl)

  # read the log file
  logText = readLines("log.txt")

  # check log text
  expect_equal(logText[3],"lm(formula = y ~ x)")

})
