# load packages
source(here::here("packages.R"))

## update the readme file
usethis::edit_file(here::here("README.md"))

## update .env file
usethis::edit_file(here::here(".env"))
dotenv::load_dot_env()

# update license -
usethis::use_mit_license(copyright_holder = Sys.getenv("copyright_holder"))

# change project name
template_rproj <- here::here("r-reproducible-repo.Rproj")

fs::file_copy(path = template_rproj,
              new_path = fs::path(Sys.getenv("project_name"),ext = "Rproj"))


## clean up startup components

fs::file_delete(path = template_rproj)
fs::file_delete(path = "LICENSE")

## setup renv for package management
renv::init()
# renv::deactivate(clean = TRUE)
