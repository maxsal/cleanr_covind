source("scripts/packages.R")
source("scripts/functions.R")

set_seed <- 46342
set.seed(set_seed)

d <- "2020-08-17"

dat <- do_it_all(d = d) %>%
    get_dbl()

abbrevs <- get_abbrevs(dat)

f_dat <- get_forecast_data(d = d, ab = abbrevs)

cfr <- get_cfr(dat)

r0 <- get_r0(dat)
