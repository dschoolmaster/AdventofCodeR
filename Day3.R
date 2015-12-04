####Day 3
dirs<-readLines("~/Path/To/InputDay3.txt")
###Part 1###
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
#plot santa's path
pdf("~/Path/To/Day3Map.pdf")
plot(santa.map[,1],santa.map[,2],type='l',xlab='Longitiude',ylab='Latitude')
points(0,0,pch=16,cex=1,col='green')
points(tail(santa.map,1),pch=16,col='red')
dev.off()
###Part 2###
santa.map<-robo.map<-c(0,0)
for(i in 1:nchar(dirs)){
  if(i%%2==1)santa.map<-rbind(santa.map,tail(santa.map,1)+z(substring(dirs,i,i)))
  if(i%%2==0)robo.map<-rbind(robo.map,tail(robo.map,1)+z(substring(dirs,i,i)))
}
#cobmine coords, combine paths and count unique members
length(unique(c(paste(santa.map[,1],santa.map[,2],sep=','),
paste(robo.map[,1],robo.map[,2],sep=','))))

#plot santa's and robo-santa's path
pdf("~/Path/To//Day3Map2.pdf")
plot(santa.map[,1],santa.map[,2],type='l',xlab='Longitiude',ylab='Latitude',ylim=c(-80,80))
lines(robo.map[,1],robo.map[,2],col='blue')
points(0,0,pch=16,cex=1,col='green')
points(tail(santa.map,1),pch=16,col='red')
points(tail(robo.map,1),pch=16,col='red')
legend(10,70,c('Santa','Robo-Santa'),col=c('black','blue'),lty=1,bty='n')
dev.off()
