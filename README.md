
# dataHelper

<!-- badges: start -->
<!-- badges: end -->

The goal of dataHelper is to help my data processing tasks.

## Installation

``` r
devtools::install_github("jeffzifanwu/dataHelper")
library(dataHelper)
```

## Examples

### Logging modelling resulst
```r
# Create log.txt in the current directory
myLog <- logging$new("log.txt")
myLog$createFile()

# write results to log.txt
logFile <- file("log.txt", open = "a")
sink(logFile)
summary(mdl) # Assuming you have a model object: mdl
sink()
close(logFile)
```

## Simulate dimension ids
``` r
genDimIds(dimSize =  c(2,3,4), dimName = c("site_id", "period_id", "worker_id"))
```

