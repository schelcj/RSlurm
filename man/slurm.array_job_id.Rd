\name{slurm.array_job_id}
\alias{slurm.array_job_id}
\title{
SLURM array job id
}
\description{
If this is running as part of an array job this will return the ID of the entire array.
}
\usage{
slurm.array_job_id()
}
\value{
  \item{double}{Current value for SLURM_ARRAY_JOB_ID}
}
\references{
  \url{http://www.schedmd.com/slurmdocs/job_array.html}
}
\author{
Chris Scheller
}