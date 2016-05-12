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
for (i in seq(1,20)){
if(i<=10){
dir=paste("./data/part_2/",subdir,"/http1/",name,"_",i,"_cropped.csv",sep="")
}else
{
	dir=paste("./data/part_2/",subdir,"/http2/",name,"_",(i-10),"_cropped.csv",sep="")
}
print(dir)

data[[i]]<-read.csv(dir)


names(data[[i]]) <- column_names
#p<-p+geom_smooth(data=data[[1]], aes(x=Time, y=Power, colour=colour))


#print(data[[i]])
}


#on my computer the plot does not work. 

postscript(paste("./data/part_2/",subdir,"_",name,"_average.eps",sep=""), width = 4, height = 6, horizontal = FALSE, onefile = FALSE)


p<-ggplot()+
	#htpp2
	geom_smooth(data=data[[10]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[11]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[12]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[13]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[14]], aes(x=Time, y=Power, colour='http2'))+
	ignore yahoo
	geom_smooth(data=data[[15]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[16]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[17]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[18]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[19]], aes(x=Time, y=Power, colour='http2'))+
	geom_smooth(data=data[[20]], aes(x=Time, y=Power, colour='http2'))	

	#htpp1
	geom_smooth(data=data[[1]], aes(x=Time, y=Power, colour="http1"))+
	geom_smooth(data=data[[2]], aes(x=Time, y=Power, colour='http1'))+
	ignore on yahoo
	geom_smooth(data=data[[3]], aes(x=Time, y=Power, colour='http1'))+
	geom_smooth(data=data[[4]], aes(x=Time, y=Power, colour='http1'))+
	geom_smooth(data=data[[5]], aes(x=Time, y=Power, colour='http1'))+
	ignore on instagram
	geom_smooth(data=data[[6]], aes(x=Time, y=Power, colour='http1'))+
	geom_smooth(data=data[[7]], aes(x=Time, y=Power, colour='http1'))+
	geom_smooth(data=data[[8]], aes(x=Time, y=Power, colour='http1'))
	ignore on flickr
	geom_smooth(data=data[[9]], aes(x=Time, y=Power, colour='http1'))




print(p)

dev.off()






