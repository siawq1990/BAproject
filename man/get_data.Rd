% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_data.R
\name{get_data}
\alias{get_data}
\title{Download full promotions and transactions data simultaneously.}
\source{
Downloading from \url{https://github.com/bradleyboehmke/completejourney/tree/master/data}.
  Data originated from 84.51°, Customer Journey study, \url{http://www.8451.com/area51/} 
  and were processes for analysis.
}
\usage{
get_data(which = "both", verbose = TRUE)
}
\arguments{
\item{which}{Character string of one or more data sets to be downloaded.
Can be one of the following; default is \code{"both"}:
\itemize{
    \item{"both"}
    \item{"promotions"}
    \item{"transactions"}
   }}

\item{verbose}{Logical indicator whether or not to download silently.}
}
\value{
Downloading a single data set will result in a tibble whereas 
  downloading multiple data sets will return a list containing each tibble. 
  For specific details on a given data set see the data sets respective help 
  file (i.e. \code{?transactions_sample}).
}
\description{
The promotions and transactions data sets are too large to be contained within 
the package. \code{get_data()} is a convenience function to download both
full promotions and transactions data sets simultaneously from the
source GitHub repository. An internet connection is required.
}
\examples{
\donttest{
# download transactions and promotions data sets
# requires internet connection
c(promotions, transactions) \%<-\% get_data(which = 'both')
}
}
\seealso{
Use \code{\link[zeallot]{\%<-\%}} for unpacking a list with multiple 
tibbles to their own global environment tibble. You can also download a
single data set with \code{\link{get_promotions}} and \code{\link{get_transactions}}.
}
