library("RUnit")
library("Slurm")

fixture                     <- list()
fixture$slurm_jobid         <- 42
fixture$slurm_arrayid       <- 98765
fixture$slurm_array_job_id  <- 45678
fixture$slurm_array_task_id <- 227
fixture$slurm_job_name      <- 'test_job_foo'

test.setUp <- function() {
  Sys.setenv(SLURM_ARRAYID=fixture$slurm_arrayid)
  Sys.setenv(SLURM_JOBID=fixture$slurm_jobid)
  Sys.setenv(SLURM_ARRAY_JOB_ID=fixture$slurm_array_job_id)
  Sys.setenv(SLURM_ARRAY_TASK_ID=fixture$slurm_array_task_id)
  Sys.setenv(SLURM_JOB_NAME=fixture$slurm_job_name)
}

test.tearDown <- function() {
  Sys.unsetenv('SLURM_ARRAYID')
  Sys.unsetenv('SLURM_JOBID')
  Sys.unsetenv('SLURM_ARRAY_JOB_ID')
  Sys.unsetenv('SLURM_ARRAY_TASK_ID')
  Sys.unsetenv('SLURM_JOB_NAME')
}

test.slurm_jobid <- function() {
  jobid <- slurm.jobid()
  checkEquals(jobid, fixture$slurm_jobid)
}

test.slurm_arrayid <- function() {
  arrayid <- slurm.arrayid()
  checkEquals(arrayid, fixture$slurm_arrayid)
}

test.slurm_array_job_id <- function() {
  array_job_id <- slurm.array_job_id()
  checkEquals(array_job_id, fixture$slurm_array_job_id)
}

test.slurm_array_task_id <- function() {
  array_task_id <- slurm.array_task_id()
  checkEquals(array_task_id, fixture$slurm_array_task_id)
}

test.slurm_job_name <- function() {
  job_name <- slurm.job_name()
  checkEquals(job_name, fixture$slurm_job_name)
}
