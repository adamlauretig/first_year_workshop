# Prepared by Adam Lauretig, for August 17, 2017
# This is an R script, it's the primary way you will interact with R.
# You type commands in here, then you can run them. You can also run them in the
# console, below, but then you won't be able to come back to them. 
# At the top of my R scripts I always put:

rm(list = ls()) # This clears everything currently loaded.
options(stringsAsFactors = FALSE) # This makes text easier to work with
seed_to_use <- 614 # This is a number to use for a seed
set.seed(seed_to_use) # This way, you can replicate your random numbers

# what does doing something in R look like?
# Addition:
1 + 1
# But if we want to use this later, we should assign a name to it
a <- 1 + 1
# now, a is assigned to 2
a
# and a is different than "a"
a
"a"

# One of the great things about R is that there are a variety of packages for
# running models, making plots, and other statistical tests. You have some 
# installed already, but to install a new one, you need to get it from CRAN:
install.packages("ggplot2")
# to load this package
library(ggplot2)

# now, we'll make a histogram of 500 draws from a normal distribution
sample_normal <- rnorm(n = 500, mean = 0, sd = 1)
# and let's plot them to see if they look "normal"
hist(sample_normal, breaks = 10)
