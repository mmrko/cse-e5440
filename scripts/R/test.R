#!/usr/bin/env Rscript

library(ggplot2)

args<-commandArgs(TRUE)

if(length(args)!=2){
stop("usage subdirectory (f.ex. aalto-open) website ")
}


subdir=args[1]
name=args[2]
data=list()
colour=list()
means=0
std=0
sums=0
column_names <- c('Time', 'Power')
test=NULL
paste("./data/part_2/",subdir,"/http",http,"/",name,"_",http,"_average.csv",sep="")
data1=
paste("./data/part_2/",subdir,"/http",http,"/",name,"_",http,"_average.csv",sep="")
data2=



names(data1) <- column_names

names(data2) <- column_names




postscript(paste("./data/part_2/",name,"_",subdir,"_average.eps",sep=""), width = 4, height = 6, horizontal = FALSE, onefile = FALSE)


#for (i in seq(1,20)){
#if(i<=10){
#colour='blue'
#}else
#{colour='red'}
#p<-p+geom_smooth(data=data[[1]], aes(x=Time, y=Power, colour=colour))
#}
#print(p)
#dev.off()

p<-ggplot()+geom_smooth(data=data1, aes(x=Time, y=Power, colour='http2'))
+geom_smooth(data=data2, aes(x=Time, y=Power, colour='http1'))
dev.off()






