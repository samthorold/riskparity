% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diversification_ratio.R
\name{diversification_ratio}
\alias{diversification_ratio}
\title{Diversification ratio of Choueifaty and Coignard (2008)}
\usage{
diversification_ratio(w, s, C)
}
\arguments{
\item{w}{matrix}

\item{s}{matrix}

\item{C}{matrix}
}
\value{
vector
}
\description{
Diversification ratio of Choueifaty and Coignard (2008)
}
\examples{
w <- matrix(c(.55, .25, .2))
s <- matrix(c(.24, .18, .15))
C <- matrix(c(1, 0.85, 0.3, 0.85, 1, -0.15, 0.3, -0.15, 1), nrow = 3)
diversification_ratio(w, s, C)
}
