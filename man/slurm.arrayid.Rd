\name{slurm.arrayid}
\alias{slurm.arrayid}
\title{
SLURM array job id for an sarray job
}
\description{
If using the \href{https://github.com/schelcj/slurm-utils/blob/master/sarray/sarray}{sarray} util for array
jobs, before sbatch had array support, this will return the value of SLURM_ARRAYID.
}
\usage{
slurm.arrayid()
}
\details{
Prior to SLURM adding array job support in sbatch we developed the utility \href{https://github.com/schelcj/slurm-utils/blob/master/sarray/sarray}{sarray} to mimic some of the array job features of other schedulers. This is primarily legacy at this
point now that proper array job support has been added.
}
\value{
  \item{double}{Current value of SLURM_ARRAYID}
}
\references{
  \url{https://github.com/schelcj/slurm-utils/blob/master/sarray/sarray}
}
\author{
Chris Scheller
}