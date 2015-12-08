
dat<-readLines("~/Path/To/InputDay6.txt")

#Part1

doit<-function(x)ifelse(action=='on',TRUE,ifelse(action=='off',FALSE,!x))

##decorate house
house<-matrix(FALSE,1000,1000)
for(i in 1:length(dat)){
##parse string##
z<-strsplit(dat[i],' ')
##get corners
coords<-grep("[1-9]",z[[1]])
lts<-strsplit(z[[1]][coords],',')
lts<-sapply(lts,as.numeric)+1
#get action
action<-z[[1]][grep('toggle|on|off',z[[1]])]
house[lts[1,1]:lts[1,2],lts[2,1]:lts[2,2]]<-sapply(house[lts[1,1]:lts[1,2],lts[2,1]:lts[2,2]],doit)
}

sum(house)

#Part2
doit<-function(x)ifelse(action=='on',x+1,ifelse(action=='off',max(0,x-1),x+2))

##decorate house
house<-matrix(0,1000,1000)

for(i in 1:length(dat)){
  ##parse string##
  z<-strsplit(dat[i],' ')
  ##get corners
  coords<-grep("[1-9]",z[[1]])
  lts<-strsplit(z[[1]][coords],',')
  lts<-sapply(lts,as.numeric)+1
  #get action
  action<-z[[1]][grep('toggle|on|off',z[[1]])]
  house[lts[1,1]:lts[1,2],lts[2,1]:lts[2,2]]<-sapply(house[lts[1,1]:lts[1,2],lts[2,1]:lts[2,2]],doit)
}
sum(house)

