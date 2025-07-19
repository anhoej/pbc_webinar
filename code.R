# Install and load pbcharts ----
# devtools::install_github('anhoej/pbcharts')
library(pbcharts)

# Systolic blood pressure ----
bp <- c(169, 172, 175, 174, 161, 142,
        174, 171, 168, 174, 180, 194,
        161, 181, 175, 176, 186, 166,
        157, 183, 177, 171, 185, 176,
        181, 174)

# build-a-plot with base R
cl  <- mean(bp)
amr <- mean(abs(diff(bp)))
s   <- amr / 1.128
lcl <- cl - 3 * s       # cl - 2.66 * amr
ucl <- cl + 3 * s       # cl + 2.66 * amr

plot(bp, type = 'o', ylim = range(bp, lcl, ucl))
abline(h = c(lcl, cl, ucl))

# introducing pbcharts ----
# run chart
pbc(bp)

# control chart
pbc(bp, chart = 'i')

# add titles
pbc(bp, 
    chart = 'i',
    title = 'Systolic blood pressure', 
    ylab  = 'mm Hg', 
    xlab  = 'Day')

?pbc

# On-time CT scan ----
View(ontime_ct)

# run chart of proportions
pbc(month, ontime, cases,
    data = ontime_ct)

# I' chart of proportions
pbc(month, ontime, cases,
    data  = ontime_ct,
    chart = 'i')

# C-section decision to delivery times ----
View(csection)

# run chart of avg_delay
pbc(month, avg_delay,
    data = csection)

# I' chart without denominator
pbc(month, avg_delay,
    data  = csection,
    chart = 'i')

# I' chart with denominator (forgetting to multiply numerator)
pbc(month, avg_delay, n,
    data  = csection,
    chart = 'i')

# with aggregated measurements, remember to multiply numerator by denominator
pbc(month, avg_delay * n, n,
    data  = csection,
    chart = 'i')

# HbA1c in children with diabetes ----
View(hba1c)

# run chart
pbc(month, avg_hba1c,
    data = hba1c)

# I' chart without denominator
pbc(month, avg_hba1c,
    data  = hba1c,
    chart = 'i')

# I' chart with denominator
pbc(month, avg_hba1c * n, n,
    data  = hba1c,
    chart = 'i')

# Hospital acquired Clostridioides difficile infections ----
View(cdi)

# run chart of counts
pbc(month, n,
    data = cdi)

# I' chart with freeze after month 24
pbc(month, n,
    data   = cdi,
    chart  = 'i',
    freeze = 24)

# split chart
pbc(month, n,
    data  = cdi,
    chart = 'i',
    split = 24)

# exclude freak data point (20)
pbc(month, n,
    data    = cdi,
    chart   = 'i',
    split   = 24,
    exclude = 20)

# plot rates per 10000 days
pbc(month, n, days,
    data     = cdi,
    chart    = 'i',
    split    = 24,
    exclude  = 20,
    multiply = 10000)

# Bacteremia 30-day mortality ----
View(bacteremia_mortality)

# I' chart faceted by hospital
pbc(month, deaths, cases,
    data  = bacteremia_mortality,
    facet = hospital,
    chart = 'i')

# formatting y axis as percentages
pbc(month, deaths, cases,
    data  = bacteremia_mortality,
    facet = hospital,
    chart = 'i',
    ypct  = TRUE)

# free y axes
pbc(month, deaths, cases,
    data   = bacteremia_mortality,
    facet  = hospital,
    chart  = 'i',
    ypct   = TRUE,
    yfixed = FALSE)

# Structure and summary of a pbc object ----
p <- pbc(bp, 
         chart = 'i',
         plot  = FALSE)

str(p)

p$data

summary(p)

plot(p)

# A dynamic dashboard of avoidable hospitalisations ----
# https://anhoej.shinyapps.io/avoidable_hospitalisations/

