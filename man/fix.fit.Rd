% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fix.fit.R
\name{fix.fit}
\alias{fix.fit}
\title{User-specified estimation of nonlinear time series regression}
\usage{
fix.fit(
  ts,
  c,
  d,
  b_time,
  b_timese,
  mp_type,
  type,
  fix_num = 0,
  r = 1,
  s = 1,
  n_esti = 2000,
  upper = 10
)
}
\arguments{
\item{ts}{ts is the data set which is a time series data typically}

\item{c}{number of basis for time input}

\item{d}{number of basis for variate input}

\item{b_time}{type of basis for time input}

\item{b_timese}{type of basis for variate input}

\item{mp_type}{select type of mapping function, "algeb" indicates algebraic mapping on the real line. "logari" represents logarithmic mapping on the real line}

\item{type}{select type of estimation."nfix" refers to no fix estimation. "fixt" indicates fix time t estimation.
"fixx" represents fix variate estimation}

\item{fix_num}{fix_num indicates the use of fixed-value nonlinear time series regression. The default value is 0, which is employed for non-fixed estimation.
If "fixt" is chosen, it represents a fixed time value. Otherwise, if not selected, it pertains to a fixed variate value}

\item{r}{indicates number of variate}

\item{s}{s is a positive scaling factor, the default is 1}

\item{n_esti}{number of points for estimation, the default is 2000}

\item{upper}{upper The upper bound for the variate basis domain. The default value is 10. When "algeb" or "logari" is chosen, the domain is automatically set from -upper to upper}
}
\value{
If "nfix" is selected, the function returns a list where each element is a matrix representing the estimation function in two dimensions. Otherwise,
if "nfix" is not selected, the function returns a list where each element is a vector representing the estimation function.
}
\description{
This function estimates nonlinear time series regression by sieve methods
}
