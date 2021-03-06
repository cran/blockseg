% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blockseg-class.R
\docType{methods}
\name{predict,blockSeg-method}
\alias{predict,blockSeg-method}
\title{Predict method for a \code{blockSeg} object}
\usage{
\S4method{predict}{blockSeg}(object, Y, lambda = NULL)
}
\arguments{
\item{object}{an object of class \code{blockSeg}.}

\item{Y}{matrix of observations.}

\item{lambda}{a numeric vector giving the list of \eqn{\lambda}{lambda} for which to predict.
By default, \code{NULL}. If \code{NULL}, it is set to the \code{lambdalist} slot
of \code{object}. If this slot is empty, \code{lambda} is set to the fusion times detected in
the \code{blockSeg} function.}
}
\description{
Produce a prediction for a vector of \code{lambda} parameter and an array of \code{class}.
}
\examples{
require(blockseg)
n <- 100
K <- 5
mu <- suppressWarnings(matrix(rep(c(1,0),ceiling(K**2/2)), K,K))
Y <- rblockdata(n,mu,sigma=.5)$Y
res <- blockSeg(Y, 100)
predict(res, Y, lambda=slot(res, "Lambda")[1:3])

}
\seealso{
\code{\linkS4class{blockSeg}}.
}
