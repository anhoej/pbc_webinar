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

# introducing pbcharts

# C-section decision to delivery times ----
View(csection)

# run chart of avg_delay

# I' chart without denominator

# I' chart with denominator (forgetting to multiply)

# with aggregated measurements, remember to multiply numerator by denominator

# HbA1c in children with diabetes ----
View(hba1c)

# run chart

# I' chart without denominator

# I' chart with denominator

# On-time CT scan ----
View(ontime_ct)

# run chart of proportions

# I' chart of proportions

# Hospital acquired Clostridioides difficile infections ----
View(cdi)

# run chart of counts

# I' chart with freeze after month 24

# split chart

# exclude freak data point (20)

# plot rates per 10000 days

# Bacteremia 30-day mortality ----
View(bacteremia_mortality)

# I' chart faceted by hospital

# formatting y axis as percentages

# free y axes

# Structure and summary of a pbc object ----

# A dynamic dashboard of avoidable hospitalisations ----
# https://anhoej.shinyapps.io/avoidable_hospitalisations/
