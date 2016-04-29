#!/usr/bin/env Rscript

df_http1_1 = read.csv('./data/http1_run1_power_over_time.csv')
df_http1_2 = read.csv('./data/http1_run2_power_over_time.csv')
df_http1_3 = read.csv('./data/http1_run3_power_over_time.csv')

df_http2_1 = read.csv('./data/http2_run1_power_over_time.csv')
df_http2_2 = read.csv('./data/http2_run3_power_over_time.csv')
df_http2_3 = read.csv('./data/http2_run4_power_over_time.csv')

df_http1 = c(df_http1_1[,2], df_http1_2[,2], df_http1_3[,2])
df_http2 = c(df_http2_1[,2], df_http2_2[,2], df_http2_3[,2])

sink("stats.txt", append=FALSE, split=FALSE)

cat('HTTP1\n')
cat('Mean: ')
cat(mean(df_http1))
cat('\n')
cat('Standard deviation: ')
cat(sd(df_http1))

cat('\n\n')

cat('HTTP2\n')
cat('Mean: ')
cat(mean(df_http2))
cat('\n')
cat('Standard deviation: ')
cat(sd(df_http2))
cat('\n')

sink()