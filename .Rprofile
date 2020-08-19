source("renv/activate.R")
.First <- function() {

  options(usethis.protocol = 'ssh')
  options(renv.consent = TRUE)

  if (!('renv' %in% list.files())) {
    library('here')
    library('usethis')
    library('tidyverse')
  }
  dir.create(here::here('figs'), showWarnings = F)
  dir.create(here::here('bin'), showWarnings = F)
  dir.create(here::here('data'), showWarnings = F)
  dir.create(here::here('scripts'), showWarnings = F)
  dir.create(here::here('data', 'raw'), showWarnings = F)
  dir.create(here::here('data', 'processed'), showWarnings = F)
  dir.create(here::here('data', 'results'), showWarnings = F)

  if (!('renv' %in% list.files())) {
    renv::init()
    suppressMessages(renv::install(c('tidyverse', 'usethis', 'here', 'gert', 'devtools')))
    devtools::install('~/Documents/projects/farmr/')
  } else {
    suppressMessages(library('tidyverse'))
    suppressMessages(library('here'))
    suppressMessages(library('glue'))
    suppressMessages(library('usethis'))
    source('renv/activate.R')
  }

  cat('
Welcome to your R-Project:', here(), '
')
}

