% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/campaigns.R
\docType{data}
\name{campaigns}
\alias{campaigns}
\title{Campaigns to household data.}
\format{A data frame with 6,589 rows and 2 variables
\itemize{
\item campaign_id: Uniquely identifies each campaign; Ranges 1-27
\item household_id: Uniquely identifies each household
}}
\source{
84.51°, Customer Journey study, \url{http://www.8451.com/area51/}
}
\usage{
campaigns
}
\value{
\item{campaigns}{a tibble}
}
\description{
Data on the campaigns received by each household in the Complete Journey study.
Each household received a different set of marketing campaigns.
}
\examples{
\donttest{
# full data set
campaigns

# Join household demographics metadata to campaigns dataset
require("dplyr")
campaigns \%>\%
  left_join(demographics, "household_id")
}
}
\keyword{datasets}
