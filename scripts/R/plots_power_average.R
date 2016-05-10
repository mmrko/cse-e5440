#!/usr/bin/env Rscript

library(ggplot2)
library(Thermimage)

orig_df <- read.csv('./data/part_1/http1_run3_power_over_time.csv')

names(orig_df) <- c('Time', 'Power')

data <- meanEveryN(orig_df[,2], n = 5000)

df <- data.frame(Time=seq(1, length(data)), Power=data)

ggplot() + geom_line(data=df, aes(x=Time, y=Power)) + geom_smooth(data=orig_df, aes(x=Time, y=Power, colour="red"))
