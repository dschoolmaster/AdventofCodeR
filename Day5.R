####Day5
nicelist<-readLines("~/Documents/AdventOfCode/InputDay5.txt")
nicelist<-readLines("J:/InputDay5.txt")

#Part 1
nau.or.nic<-function(inpt){
z<-tolower(strsplit(inpt,'')[[1]])
x<-table(z[z%in%letters])
return(sum(x[names(x)%in%c("a","e","i","o","u")])>=3&
  any(head(z,-1)==tail(z,-1))&
  length(grep('ab|cd|pq|xy',inpt))==0)}

sum(sapply(nicelist,nau.or.nic))

#Part 2
#test case

nau.or.nic2<-function(inpt){
  z<-tolower(strsplit(inpt,'')[[1]])
  prs<-sapply(1:(length(z)-1),function(x)paste(z[x],z[x+1],sep=''))
  return((length(prs)!=length(unique(prs))&
           ((length(prs)-length(unique(prs)))>sum(foo<-head(prs,-1)==tail(prs,-1))|
              (any(head(foo,-1)*tail(foo,-1))))&any(head(z,-2)==tail(z,-2))))}

sum(sapply(nicelist,nau.or.nic2))
