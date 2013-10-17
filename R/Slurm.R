returnslurm <- function() {
  UseMethod("slurm")
}

slurm.jobid <- function() {
  return(as.numeric(Sys.getenv('SLURM_JOBID')))
}

slurm.array_job_id <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAY_JOB_ID')))
}

slurm.array_task_id <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAY_TASK_ID')))
}

slurm.arrayid <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAYID')))
}

slurm.job_name <- function() {
  return(Sys.getenv('SLURM_JOB_NAME'))
}