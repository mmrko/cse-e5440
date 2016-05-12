#!/usr/bin/env Rscript

library(Thermimage)

args<-commandArgs(TRUE)

if(length(args)!=3){
stop("usage subdirectory (f.ex. aalto-open) website   1 or 2 for http1 or http2")
}


subdir=args[1]
name=args[2]
http=args[3]

min=22
if(name=='flickr'){max=202} else
 if( name=='yahoo'){max=172} else
  { max=226	}
means=0
std=0
sums=0

for (i in seq(1,10)){
dir=paste("./data/part_2/",subdir,"/http",http,"/",name,"_",i,".csv",sep="")
print(dir)

data= read.csv(dir,sep=",",colClasses=c(NULL,NA))


#print(head(data[i]))
data <- meanEveryN(data[,2], n = 5000)
#print(dim(data))
#print(length(data))
data=data[seq(min,max)]

#print(length(data))
#print(sum(data))

sums=sums+sum(data)

#print("Seq")
#print(length(data))
#print(data)
means=means+mean(data)

#print( means)
std=max(std,sd(data))

#print( std)
sink(paste("./data/part_2/",subdir,"/http",http,"/",name,"_",i,"_cropped.csv",sep=""), append=FALSE, split=FALSE)
x=1
for (i in data){
cat(paste(x,i,sep=','))
cat('\n')
x=x+1
}
sink()

}



sink(paste("stats_",name,"_",http,".txt",sep=""), append=FALSE, split=FALSE)
cat(paste('HTTP',http,'\n',sep=""))
cat('Mean: ')
cat(means/10)
cat('\n')
cat('Standard deviation: ')
cat(std)
cat('\n')
cat('Sum: ')
cat(sums/10 )
cat('\n\n')
sink()

