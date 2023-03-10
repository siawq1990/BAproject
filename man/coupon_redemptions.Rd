% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coupon_redemptions.R
\docType{data}
\name{coupon_redemptions}
\alias{coupon_redemptions}
\title{Coupon redemption data.}
\format{A data frame with 2,102 rows and 4 variables
\itemize{
  \item household_id: Uniquely identifies each household
  \item coupon_upc: Uniquely identifies each coupon (unique to household and campaign)
  \item campaign_id: Uniquely identifies each campaign
  \item redemption_date: Date when the coupon was redeemed
}}
\source{
84.51°, Customer Journey study, \url{http://www.8451.com/area51/}
}
\usage{
coupon_redemptions
}
\description{
Coupon data identifying the coupons that each household redeemed in the Complete
Journey study.
}
\examples{
\donttest{
# full data set
coupon_redemptions

# Join coupon metadata to coupon_redempt dataset
require("dplyr")
coupon_redemptions \%>\%
  left_join(coupons, "coupon_upc")
}
}
\keyword{datasets}
