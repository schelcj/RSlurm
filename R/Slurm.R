#' 
slurm <- function() {
  UseMethod("slurm")
}

#' Retrieve the current jobid
#' 
#' @return \code{double} SLURM_JOBID env var
slurm.jobid <- function() {
  return(as.numeric(Sys.getenv('SLURM_JOBID')))
}

#' If the job is an array created with sbatch then retrieve the job id of the 
#' array as whole. Used for job control of all jobs in the array
#' 
#' @return \code{double} SLURM_ARRAY_JOB_ID env var
slurm.array_job_id <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAY_JOB_ID')))
}

#' If the job is an array created with sbatch then retrieve the task id of an
#' single array task.
#' 
#' @return \code{double} SLURM_ARRAY_TASK_ID env var
slurm.array_task_id <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAY_TASK_ID')))
}

#' If the job was created with sarray then retrieve the task id of an single
#' array task.
#' 
#' @return \code{double} SLURM_ARRAYID env var
slurm.arrayid <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAYID')))
}

#' Job name as specified by --job-name or if not specified then the name of
#' the first command in the batch script.
#' 
#' @return \code{string}  SLURM_JOB_NAME env var
slurm.job_name <- function() {
  return(Sys.getenv('SLURM_JOB_NAME'))
}