% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stabsel.R
\name{stab.blockSeg}
\alias{stab.blockSeg}
\title{\code{stab.blockSeg} algorithm}
\usage{
stab.blockSeg(Y, nsimu, max.break, max.var = floor(ncol(Y)^2/8),
  random.break = TRUE, sym.break = FALSE, mc.cores = 2,
  verbose = TRUE)
}
\arguments{
\item{Y}{matrix of observations.}

\item{nsimu}{a positive integer.}

\item{max.break}{a positive integer less than number of columns divided by 2 and number of rows divided by 2.}

\item{max.var}{a positive integer less than number of columns times number of rows.
By default, \code{ncol(Y)**2/8}.}

\item{random.break}{logical. To change the position of the first row (resp. column); the rows
before this position are moved to the end. By default TRUE.}

\item{sym.break}{logical. In the case of symmetric matrices, it is possible to accumulate breaks
in row and columns to improve the quality of the estimation. By default FALSE.
Warning: a check is made on the dimensions of the matrix but not on the fact that it is symmetrical
or not; this choice was made for the case where the user would like to have symmetrical breaks
even if the matrix is not (not recommended by the authors of the package).}

\item{mc.cores}{a positive integer giving the number of cores used. If you use windows, the parallelization is impossible.
By default, 2}

\item{verbose}{logical. To display each step. By default TRUE.}
}
\description{
Model selection for the \code{blockSeg} algorithm.
}
\examples{
 ## model parameters
n <- 100
K <- 5
mu <- suppressWarnings(matrix(rep(c(1,0),ceiling(K**2/2)), K,K))
Y <- rblockdata(n,mu,sigma=.5)$Y
res <- stab.blockSeg(Y, 100, 20)

}
