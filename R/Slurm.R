# SLURM_JOBID
# SLURM_ARRAY_JOB_ID
# SLURM_ARRAY_TASK_ID
# 
# SLURM_ARRAYID
# Sys.getenv('SLURM_ARRAYID')

slurm <- function() {
  UseMethod("slurm")
}

slurm.jobid <- function() {
  return(as.numeric(Sys.getenv('SLURM_JOBID')))
}

slurm.array_job_id <- function() {
  return(as.numberic(Sys.getenv('SLURM_ARRAY_JOB_ID')))
}

slurm.array_task_id <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAY_TASK_ID')))
}

slurm.arrayid <- function() {
  return(as.numeric(Sys.getenv('SLURM_ARRAYID')))
}
