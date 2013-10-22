\name{slurm.array_task_id}
\alias{slurm.array_task_id}
\title{
SLURM array job task id
}
\description{
If this is running as part of an array job this will return the ID of the individual task.
}
\usage{
slurm.array_task_id()
}
\value{
  \item{double}{Current array task id in SLURM_ARRAY_TASK_ID}
}
\references{
  \url{http://www.schedmd.com/slurmdocs/job_array.html}
}
\author{
Chris Scheller
}