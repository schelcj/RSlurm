\name{Slurm}
\alias{Slurm}
\alias{Slurm}
\docType{package}
\title{
Slurm Job Environment

Slurm
}
\description{
Provides Slurm job environment information.
}
\details{
\tabular{ll}{
Package: \tab Slurm\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-10-10\cr
License: \tab GPLv2\cr
}
}
\usage{
slurm.jobid()
slurm.job_name()
}
\author{
Chris Scheller

Maintainer: Chris Scheller <schelcj@umich.edu>
}
\references{
}
\keyword{ package }
\seealso{
}
\examples{
## Get the current job id
jobid <- slurm.jobid()

## Get the current job name
jobname <- slurm.job_name()
}
