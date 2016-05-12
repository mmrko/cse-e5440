#!/usr/bin/env Rscript

library(ggplot2)

args<-commandArgs(TRUE)

if(length(args)!=2){
stop("usage subdirectory (f.ex. aalto-open) website ")
}


subdir=args[1]
name=args[2]
data=list()
column_names <- c('Time', 'Power')


data1=read.csv(paste("./data/part_2/",subdir,"/http1/",name,"_1_average.csv",sep=""))

data2=read.csv(paste("./data/part_2/",subdir,"/http2/",name,"_2_average.csv",sep=""))



names(data1) <- column_names

names(data2) <- column_names




postscript(paste("./data/part_2/",name,"_",subdir,"_average.eps",sep=""), width = 4, height = 6, horizontal = FALSE, onefile = FALSE)


p<-ggplot()+geom_smooth(data=data1, aes(x=Time, y=Power, colour='http1'))+
	geom_smooth(data=data2, aes(x=Time, y=Power, colour='http2'))
print(p)
dev.off()






