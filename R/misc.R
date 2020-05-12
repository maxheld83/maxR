create_package2_max <- function(name) {
  setwd("/Users/max/GitHub/")
  metaR::create_package2(
    name = name
  )
  usethis::use_agpl3_license()
  usethis::use_git()
  usethis::use_github()
  metaR::use_github_actions2()
  metaR::use_codecov2(reposlug = paste("maxheld83", name, sep = "/"))
  usethis::browse_github_secrets(package = name)
}

use_package2 <- purrr::partial(usethis::use_package, min_version = TRUE)
