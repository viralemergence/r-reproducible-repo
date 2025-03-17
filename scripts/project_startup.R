# load packages
source(here::here("packages.R"))

## update .env file
usethis::edit_file(here::here(".env"))

# update license - change 
usethis::use_mit_license(copyright_holder = Sys.getenv("copyright_holder"))

# change project name
usethis::create_project()

## clean up startup components
