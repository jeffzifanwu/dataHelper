test_that("genDimIds works correctly", {

  # Execute function
  result <- genDimIds(
      dimSize = c(2,3,4)
    , dimName = c("site_id", "period_id", "worker_id")
    )

  # Check that the result is a dataframe
  expect_s3_class(result, "data.frame")

  # Check that the dataframe has 24 rows
  expect_equal(nrow(result), 24)

})
