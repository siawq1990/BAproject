
<!-- README.md is generated from README.Rmd. Please edit that file -->

# completejourney

[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Travis-CI Build
Status](https://travis-ci.org/bradleyboehmke/completejourney.svg?branch=master)](https://travis-ci.org/bradleyboehmke/completejourney)

## Overview

An R data package that provides access to data in the Complete Journey
Study provided by [84.51](http://www.8451.com). The data represents
grocery store shopping transactions over one year from a group of 2,469
households who are frequent shoppers at a retailer. It contains all of
each household’s purchases, not just those from a limited number of
categories. For certain households, demographic information as well as
direct marketing contact history are included. The data sets provided by
`completejourney::get_data()` include:

  - `transactions`: products purchased by households
  - `products`: product metadata (brand, description, etc.)
  - `demographics`: household demographic data (age, income, family
    size, etc.)
  - `campaigns`: campaigns received by each household
  - `campaign_descriptions`: campaign metadata (length of time active)
  - `coupons`: coupon metadata (UPC code, campaign, etc.)
  - `coupon_redemptions`: coupon redemptions (household, day, UPC code,
    campaign)
  - `promotions`: product placement in mailers and in stores
    corresponding to advertising campaigns

## Installation

You can install `completejourney` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("bradleyboehmke/completejourney")
```

## Downloading the Data

The data sets available through this package are quite sizeable; and too
large to be contained within the package. `get_data()` provides an
efficient method for downloading one or more of the data sets from the
source GitHub repository.

``` r
library(completejourney)
get_data(which = "all", verbose = FALSE)
```

Each downloaded data set is saved as a tibble in the users global
environment. For specifc details on a given data set see the data sets
respective help file (i.e. `?transactions`).

``` r
ls()
#> [1] "campaign_descriptions" "campaigns"             "coupon_redemptions"   
#> [4] "coupons"               "demographics"          "products"             
#> [7] "promotions"            "transactions"
```

## Learn more

Learn more about the completejourney data, and the type of insights you
can look for, at
[https://bradleyboehmke.github.io/completejourney](https://bradleyboehmke.github.io/completejourney/).

## Source

The Complete Journey data is available at:
<http://www.8451.com/area51/>.
