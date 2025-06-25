# Install and load pbcharts ----
# devtools::install_github('anhoej/pbcharts')
library(pbcharts)

# Random normal data ----
y <- rnorm(24)
plot(y, type = 'o', ylim = range(-3, y, 3))
abline(h = c(-3, 0, 3))

pbc(y, chart = 'i', cl = 0, sd = 1)
pbc(y, chart = 'i')

# Systolic blood pressure ----
bp <- c(169, 172, 175, 174, 161, 142,
        174, 171, 168, 174, 180, 194,
        161, 181, 175, 176, 186, 166,
        157, 183, 177, 171, 185, 176,
        181, 174)

pbc(bp)

pbc(bp, chart = 'i')

?pbc

# C-section decision to delivery times ----
View(csection)

pbc(month, avg_delay,
    data = csection)

pbc(month, avg_delay,
    data = csection,
    chart = 'i')

pbc(month, avg_delay, n,
    data = csection,
    chart = 'i')

pbc(month, avg_delay * n, n,
    data = csection,
    chart = 'i')

# HbA1c in children with diabetes ----
View(hba1c)

pbc(month, avg_hba1c,
    data = hba1c)

pbc(month, avg_hba1c,
    data = hba1c,
    chart = 'i')

pbc(month, avg_hba1c * n, n,
    data = hba1c,
    chart = 'i')

# On-time CT scan ----
View(ontime_ct)

pbc(month, ontime, cases,
    data = ontime_ct,
    ypct = T)

pbc(month, ontime, cases,
    data = ontime_ct,
    chart = 'i',
    ypct = T)

# Hospital acquired Clostridioides difficile infections ----
View(cdi)

pbc(month, n,
    data = cdi)

pbc(month, n,
    data = cdi,
    chart = 'i',
    freeze = 24)

pbc(month, n,
    data = cdi,
    chart = 'i',
    split = 24)

pbc(month, n,
    data = cdi,
    chart = 'i',
    split = 24,
    exclude = 20)

pbc(month, n, days,
    data = cdi,
    chart = 'i',
    split = 24,
    exclude = 20,
    multiply = 10000)

# Bacteremia 30-day mortality ----
View(bacteremia_mortality)

pbc(month, deaths, cases,
    data = bacteremia_mortality,
    facet = hospital,
    chart = 'i')

pbc(month, deaths, cases,
    data = bacteremia_mortality,
    facet = hospital,
    chart = 'i',
    ypct = TRUE)

pbc(month, deaths, cases,
    data = bacteremia_mortality,
    facet = hospital,
    chart = 'i',
    ypct = TRUE,
    yfixed = FALSE)

# A dynamic dashboard of avoidable hospitalisations ----
# https://anhoej.shinyapps.io/avoidable_hospitalisations/

