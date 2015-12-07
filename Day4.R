####Day 4 Part 1
library(digest)
#check
digest('abcdef609043',algo="md5",serialize = F)

k=0
while(
  substring(digest(paste("iwrupvqb",k,sep=''),
                   algo="md5",serialize = F),1,5)!="00000")k=k+1
k=9958217
#Part 2
while(
  substring(digest(paste("iwrupvqb",k,sep=''),
                   algo="md5",serialize = F),1,6)!="000000")k=k+1

