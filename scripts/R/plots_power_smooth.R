#!/usr/bin/env Rscript

library(ggplot2)

df_http1_1 = read.csv('./data/http1_run1_power_over_time.csv')
df_http1_2 = read.csv('./data/http1_run2_power_over_time.csv')
df_http1_3 = read.csv('./data/http1_run3_power_over_time.csv')

df_http2_1 = read.csv('./data/http2_run1_power_over_time.csv')
df_http2_2 = read.csv('./data/http2_run3_power_over_time.csv')
df_http2_3 = read.csv('./data/http2_run4_power_over_time.csv')

column_names <- c('Time', 'Power')

names(df_http1_1) <- column_names
names(df_http1_2) <- column_names
names(df_http1_3) <- column_names

names(df_http2_1) <- column_names
names(df_http2_2) <- column_names
names(df_http2_3) <- column_names

ggplot() +
  geom_smooth(data=df_http1_1, aes(x=Time, y=Power, colour="red")) +
  geom_smooth(data=df_http1_2, aes(x=Time, y=Power, colour="red")) +
  geom_smooth(data=df_http1_3, aes(x=Time, y=Power, colour="red")) +

  geom_smooth(data=df_http2_1, aes(x=Time, y=Power, colour="blue")) +
  geom_smooth(data=df_http2_2, aes(x=Time, y=Power, colour="blue")) +
  geom_smooth(data=df_http2_3, aes(x=Time, y=Power, colour="blue"))
