## For more information about targets see https://books.ropensci.org/targets
## Load your packages, e.g. library(targets).
source("./packages.R")
# load environment variables
dotenv::load_dot_env()

# Set target options with targets::tar_option_set() - useful for tuning performance and setting up pipelines on HPCs

## Load functions stored in /R 
targets::tar_source()

## tar_plan supports drake-style targets and perferred tar_target() notation
example_tar_plan <- tar_plan(
  
  # target = function_to_make(arg), ## drake style
  
  # tar_target(target2, function_to_make2(arg)) ## targets style
  
)

# add tar_plan outputs to this list to have targets make them.
list(
  example_tar_plan
)
