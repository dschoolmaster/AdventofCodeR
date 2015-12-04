####Day 3
dirs<-readLines("~/Path/To/InputDay3.txt")
#create mapping function
z<-function(x){
  switch(x,
         "^"=c(0,1),
         "v"=c(0,-1),
         "<"=c(-1,0),
         ">"=c(1,0)
  )
}
#create coord matrix
santa.map<-matrix(0,nchar(dirs)+1,2)
#loop through
for(i in 1:nchar(dirs))santa.map[i+1,]<-santa.map[i,]+z(substring(dirs,i,i))
#count unique locations
length(unique(paste(santa.map[,1],santa.map[,2],sep=',')))
pdf("~/Path/To/Day3Map.pdf")
plot(santa.map[,1],santa.map[,2],type='l',xlab='Longitiude',ylab='Latitude')
points(0,0,pch=16,cex=1,col='green')
points(tail(santa.map,1),pch=16,col='red')
dev.off()
