#!/usr/bin/env Rscript

library(ggplot2)

args<-commandArgs(TRUE)

if(length(args)!=1){
stop("usage subdirectory (f.ex. aalto-open)")
}


subdir=args[1]
name=args[2]
data=list()
column_names <- c('Time', 'Power')


data11=read.csv(paste("./data/part_2/power/",subdir,"/http1/instagram_1_average.csv",sep=""))

data12=read.csv(paste("./data/part_2/power/",subdir,"/http2/instagram_2_average.csv",sep=""))


data21=read.csv(paste("./data/part_2/power/",subdir,"/http1/flickr_1_average.csv",sep=""))

data22=read.csv(paste("./data/part_2/power/",subdir,"/http2/flickr_2_average.csv",sep=""))


data31=read.csv(paste("./data/part_2/power/",subdir,"/http1/yahoo_1_average.csv",sep=""))

data32=read.csv(paste("./data/part_2/power/",subdir,"/http2/yahoo_2_average.csv",sep=""))




names(data11) <- column_names

names(data12) <- column_names

names(data21) <- column_names

names(data22) <- column_names

names(data31) <- column_names

names(data32) <- column_names




postscript(paste("./data/part_2/power/all_",subdir,"_average.eps",sep=""), width = 4, height = 6, horizontal = FALSE, onefile = FALSE)


p<-ggplot()+
	geom_smooth(data=data11, aes(x=Time, y=Power, colour='instagram_http1'))+
	geom_smooth(data=data12, aes(x=Time, y=Power, colour='instagram_http2'))+
	geom_smooth(data=data21, aes(x=Time, y=Power, colour='flickr_http1'))+
	geom_smooth(data=data22, aes(x=Time, y=Power, colour='flickr_http2'))+
	geom_smooth(data=data31, aes(x=Time, y=Power, colour='yahoo_http1'))+
	geom_smooth(data=data32, aes(x=Time, y=Power, colour='yahoo_http2'))

print(p)
dev.off()






