# Create package
usethis::create_package("jeffCodes/dataHelper")

# Ignore configuration
usethis::use_build_ignore("dev")

# Set up dependencies
usethis::use_package("R6")

# Check the current working directory is at dataHelper
getwd()

# Create R functions
usethis::use_r("genDimIds")
devtools::document() # create documentation

# Testing framework
usethis::use_testthat()
usethis::use_test("genDimIds")
usethis::use_test("logging")
usethis::use_test("logSummary")

# Create a readme
usethis::use_readme_md()

# Licenses
usethis::use_gpl_license(version = 3)

# check the package
devtools::check()
devtools::test()

# GitHub
usethis::use_git()
usethis::gh_token_help()
usethis::use_github()

# - - - - - - - - - - - - - - - - - - - - - - - - -
# Testing space: ----
# - - - - - - - - - - - - - - - - - - - - - - - - -

# Check the current working directory is at JWU_2024rdev
setwd("~/jeffCodes/JWU_2024rdev")
getwd()

# install package
devtools::install_github("jeffzifanwu/dataHelper")
library(dataHelper)

# check help documation
help(package = "dataHelper")

# list functions in this package
ls("package:dataHelper")

# Run my function
genDimIds(dimSize =  c(2,3,4), dimName = c("site_id", "period_id", "worker_id"))

