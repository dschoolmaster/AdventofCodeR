####Day 1####
z<-readLines("~/Documents/paren.txt")
opn<-strsplit(z,'\\(')
cls<-strsplit(z,'\\)')
sum(nchar(cls[[1]][grep('\\(',cls[[1]])]))-sum(nchar(opn[[1]][grep('\\)',opn[[1]])]))

