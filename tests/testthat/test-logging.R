test_that("logging work correctly", {

  # create object
  myLog = logging$new("log.txt")
  expect_equal(myLog$fileName, "log.txt")

  # create file
  myLog$createFile()
  expect_true(file.exists("log.txt"))

  # write to log
  myLog$write("testing")
  logText = readLines("log.txt")
  expect_equal(logText, "testing")

})
