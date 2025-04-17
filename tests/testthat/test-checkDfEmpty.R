test_that("checkDfEmpty handles empty and non-empty dataframes correctly", {

  expect_error(checkDfEmpty(data.frame(), FALSE))
  expect_equal(checkDfEmpty(data.frame(), TRUE), "Pass")

  expect_error(checkDfEmpty(mtcars, TRUE))
  expect_equal(checkDfEmpty(mtcars, FALSE), "Pass")

})
