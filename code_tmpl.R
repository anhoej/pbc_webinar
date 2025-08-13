# Install and load pbcharts ----
# devtools::install_github('anhoej/pbcharts')
library(pbcharts)

# Systolic blood pressure ----
bp <- c(169, 172, 175, 174, 161, 142,
        174, 171, 168, 174, 180, 194,
        161, 181, 175, 176, 186, 166,
        157, 183, 177, 171, 185, 176,
        181, 174)

# Build-a-plot with base R ----
amr <- mean(abs(diff(bp)))  # average moving range
s   <- amr / 1.128          # standard deviation
cl  <- mean(bp)             # centre line
lcl <- cl - 3 * s           # lower control limit
ucl <- cl + 3 * s           # upper control limit

plot(bp, 
     type = 'o',
     ylim = range(bp, lcl, ucl))
abline(h = c(lcl, cl, ucl))

# Introducing pbcharts ----
# run chart


# control chart


# add titles


# help


# I' charts with proportion data (on-time CT scan) ----
View(ontime_ct)

# I' chart of proportions


# format y axis as percentage


# I' charts with measurement data (HbA1c in children with diabetes) ----
View(hba1c)

# measurements without denominator


# measurements with denominator
# WRONG! - forgetting to multiply numerator


# CORRECT! - with aggregated measurements, multiply numerator by denominator


# Small multiples (bacteremia 30-day mortality) ----
View(bacteremia_mortality)

# I' chart faceted by hospital


# format y axis as percentage


# free y axes


# Case study: Hospital acquired Clostridioides difficile infections ----
View(cdi)

# I' chart of counts


# I' chart with freeze after month 24


# split chart


# exclude freak data point (20)


# plot rates per 10000 days


# Structure and summary of a pbc object ----
dev.off()
p <- pbc(month, deaths, cases,
         facet  = hospital,
         data   = bacteremia_mortality,
         chart  = 'i',
         ypct   = TRUE,
         plot   = FALSE)

str(p)
p$title
p$data
summary(p)
plot(p)

# An interactive dashboard of avoidable hospitalisations ----
# https://anhoej.shinyapps.io/avoidable_hospitalisations/
