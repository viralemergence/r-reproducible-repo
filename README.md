# r-reproducible-repo

The repository provides a template for reproducible R projects. It uses [`{targets}`](https://books.ropensci.org/targets/) to manage code execution (among other things) and [`{renv}`](https://rstudio.github.io/renv/index.html) to manage packages. Compute environments are managed via [docker](https://rocker-project.org/) and continuous integration happens in [github actions](https://docs.github.com/en/actions).

## How to use the template

1)  On [github.com](https://github.com/viralemergence/r-reproducible-repo) click "Use this template" or run the following code from the command line.

```         
gh repo create my-new-project --template viralemergence/r-reproducible-repo --private --clone
```

2)  [Clone the repo](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) from Github to your local machine

```
# in location where the project should live
git clone https://github.com/user-name/repo-name.git
```
3)  Open `scripts/project_startup.R` and follow the script.

4)  Write code in {targets}, use `renv::snapshot()` to keep dependencies up to date, and share your project with github!
  - usethis::use_r("my-function") will create a new file in your /R folder
  - [`{fnmate}`]{https://github.com/MilesMcBain/fnmate} is super handy for this as well.

## Includes

-   targets
-   renv
-   .github/workflow
-   .env
-   /R
-   /Scripts
-   License.md
-   Readme.md

## Nice conventions

- All targets are nouns and all functions are verbs
- Each function lives in its own file.
- Each function is well documented with roxygen tags (press `cmd + shift + r` with cursor inside the function parenthesis)
- Use psuedo-code/in line comments to make `_targets.R` easier to follow
- Use an R formatter like [`{air}`](https://www.tidyverse.org/blog/2025/02/air/) to  
keep your code tidy or use built in IDE functions e.g. `cmd + shift + i` in rstudio.
- Keep all your packages in `packages.R`
