test_that("checkNaDf works", {
  
  # Create a dataframe
  df <- data.frame(a = c(1, 2, NA), b = c(4, 5, 6))
  
  # tests
  expect_error(checkNaDf(df, "a"), "Column a contains NA values")
  expect_message(checkNaDf(df, "b"), "Column b does not contain any NA values")
  expect_error(checkNaDf(df, "c"), "Column c does not exist in the dataframe")
  
})
