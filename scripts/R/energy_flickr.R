#!/usr/bin/env Rscript

name="flickr"
http=1
dir=paste("./data/http",http,"/",name,"/",name,"_http",http,".csv",  ,sep="")
data=list()

for (i in seq(1,10)){
data[i]= read.csv(dir)

}