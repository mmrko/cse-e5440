#!/usr/bin/env Rscript

library(Thermimage)

library(base)

args<-commandArgs(TRUE)

if(length(args)!=4){
stop("usage: <subdirectory (f.ex. aalto-open)> <website>   <1 or 2 for http1 or http2> <number of runs> " )
}

subdir=args[1]
name=args[2]
http=strtoi(args[3])
runs=strtoi(args[4])
min=22
if(name=='flickr'){max=192} else
 if( name=='yahoo'){max=172} else
  { max=222	}

average_data=mat.or.vec(max-min,1);

means=0
std=0
sums=0
i=1
while (i<=runs){
dir=paste("./data/part_2/power/",subdir,"/http",http,"/",name,"_",i,".csv",sep="")
print(dir)

data= read.csv(dir,sep=",",colClasses=c(NULL,NA))


#print(head(data[i]))
data <- meanEveryN(data[,2], n = 5000)
#print(dim(data))
#print(length(data))
data=data[seq(min,max)]
average_data=average_data+data
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
sink(paste("./data/part_2/power/",subdir,"/http",http,"/",name,"_",i,"_cropped.csv",sep=""), append=FALSE, split=FALSE)
x=1
for (j in data){
cat(paste(x,j,sep=','))
cat('\n')
x=x+1
}
sink()
i=i+1
}

print('Test')
print(length(data))
average_data=average_data/runs
print(length(average_data))
sink(paste("./data/part_2/power/",subdir,"/http",http,"/",name,"_",http,"_average.csv",sep=""), append=FALSE, split=FALSE)
x=1
for (i in average_data){
cat(paste(x,i,sep=','))
cat('\n')
x=x+1
}
sink()




sink(paste("./data/part_2/power/stats_",subdir,"_",name,"_",http,".txt",sep=""), append=FALSE, split=FALSE)
cat(paste('HTTP',http,'\n',sep=""))
cat('Mean: ')
cat(means/runs)
cat('\n')
cat('Standard deviation: ')
cat(std)
cat('\n')
cat('Sum: ')
cat(sums/runs)
cat('\n\n')
sink()


