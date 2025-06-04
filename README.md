# dataHelper

<!-- badges: start -->
<!-- badges: end -->

The goal of creating this package is to help my data processing tasks.

## Installation
``` r
devtools::install_github("jeffzifanwu/dataHelper")
library(dataHelper)
```

## See documentation in R
``` r
?dataHelper::checkNaDf
?dataHelper::checkDfEmpty
?dataHelper::genDimIds
?dataHelper::logging
?dataHelper::logSummary
```

## Examples

### Log modelling resulst
```r
# Create log.txt in the current directory
myLog <- logging$new("log.txt")
myLog$createFile()

# log any comments
myLog$write(paste0("Model 1: Standard DiD"))

# log model results
logFile <- file("log.txt", open = "a")
sink(logFile)
summary(mdl) # Assuming you have a model object: mdl
sink()
close(logFile)
```

### Generate dimension ids
``` r
genDimIds(dimSize =  c(2,3,4), dimName = c("site_id", "period_id", "worker_id"))
```
