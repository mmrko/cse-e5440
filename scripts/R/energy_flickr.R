#!/usr/bin/env Rscript

name="flickr"
http=1
min=22
max=204
data=list()
means=list()
std=list()
Sum=0

for (i in seq(1,10)){
dir=paste("./data/part_2/aalto-open/http",http,"/",name,"_",i,".csv",  ,sep="")
data[i]= read.csv(dir)
data[i]=data[i][seq(min*5000,max*5000), 2]
means[i]=means(data[i])
std=sd(data[i])
Sum=Sum+sum(data[i]}

df_http=c(data)

sink(paste("stats_",name,"_",http,".txt",sep=""), append=FALSE, split=FALSE)

cat(paste('HTTP',http,'\n',sep="")
cat('Mean: ')
cat(mean(means))
cat('\n')
cat('Standard deviation: ')
cat(max(std)
cat('\n')
cat('Sum: ')
cat(Sum/ 10 )
cat('\n\n')

sink()

